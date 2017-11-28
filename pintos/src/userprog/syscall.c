#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "threads/vaddr.h"
#include "list.h"
#include "process.h"

static void syscall_handler (struct intr_frame *);
void is_valid(void*);
struct process_file* list_search(struct list* files, int fd);
extern struct lock file_lock;

// STRUCT TO HELP WITH PROCESSING THE FILES
struct process_file {
  struct file* ptr;
  int fd;
  struct list_elem elem;
};

void
syscall_init (void) 
{
  intr_register_int (0x30, 3, INTR_ON, syscall_handler, "syscall");
}

static void
syscall_handler (struct intr_frame *f UNUSED) 
{
  uint32_t *call_ptr = f->esp;
  is_valid(call_ptr);
  uint32_t system_call = *call_ptr;

  

  switch (system_call)
  {
    case SYS_HALT:
      shutdown_power_off();
      break;

    case SYS_EXIT:
      is_valid(call_ptr + 1);
      sys_exit(*(call_ptr + 1));
      break;

    case SYS_EXEC:
      is_valid(call_ptr + 1);
      is_valid(*(call_ptr + 1));
      f->eax = sys_exec(*(call_ptr + 1));
      break;

    case SYS_WAIT:
      is_valid(call_ptr + 1);
      f->eax = process_wait(*(call_ptr + 1));
      break;
	  
//	case SYS_FIBO:
//	case SYS_SUM:
    
    case SYS_CREATE:
      is_valid(call_ptr + 5);
      is_valid(*(call_ptr + 4));

      lock_acquire(&file_lock);
      f->eax = filesys_create(*(call_ptr + 4), *(call_ptr + 5));
      lock_release(&file_lock);
      break;

    case SYS_REMOVE:
      is_valid(call_ptr + 1);
      is_valid(*(call_ptr + 1));

      lock_acquire(&file_lock);

      if(filesys_remove(*(call_ptr + 1)) == NULL)
        f->eax = false;
      else
        f->eax = true;

      lock_release(&file_lock);
      break;

    case SYS_OPEN:
      is_valid(call_ptr + 1);
      is_valid(*(call_ptr + 1));
	  sys_open(call_ptr,f);
      
      break;
    case SYS_CLOSE:
      is_valid(call_ptr + 1);

      lock_acquire(&file_lock);
      sys_close(&thread_current()->files,*(call_ptr + 1));
      lock_release(&file_lock);
      break;

    case SYS_FILESIZE:
      is_valid(call_ptr + 1);

      lock_acquire(&file_lock);
      f->eax = file_length (list_search(&thread_current()->files, *(call_ptr + 1))->ptr);
      lock_release(&file_lock);
      break;

    case SYS_READ:
      is_valid(call_ptr + 7);
      is_valid(*(call_ptr + 6));
	  sys_read(call_ptr,f);

      break;

    case SYS_WRITE:
      is_valid(call_ptr + 7);
      is_valid(*(call_ptr + 6));
		sys_write(call_ptr,f);

      break;

    case SYS_SEEK:
      is_valid(call_ptr + 5);

      lock_acquire(&file_lock);
      file_seek(list_search(&thread_current()->files, *(call_ptr + 4))->ptr, *(call_ptr + 5));
      lock_release(&file_lock);
      break;

    case SYS_TELL:
      is_valid(call_ptr + 1);

      lock_acquire(&file_lock);
      f->eax = file_tell(list_search(&thread_current()->files, *(call_ptr + 1))->ptr);
      lock_release(&file_lock);
      break;
	


  }
}
void sys_write(uint32_t *call_ptr,struct intr_frame *f){
	      if(*(call_ptr + 5) == 1)
      {
        putbuf(*(call_ptr + 6), *(call_ptr + 7));
        f->eax = *(call_ptr + 7);
      }
      else
      {
        
        struct process_file* frame_ptr = list_search(&thread_current()->files, *(call_ptr + 5));
        if(frame_ptr == NULL)
          f->eax = -1;
        else
        {
          lock_acquire(&file_lock);
          f->eax = file_write (frame_ptr->ptr, *(call_ptr + 6), *(call_ptr + 7));
          lock_release(&file_lock);
        }
      }
}
void sys_read(uint32_t *call_ptr,struct intr_frame *f){
	  if(*(call_ptr + 5) == 0)
      {
        int i;
        uint8_t* buffer = *(call_ptr + 6);

        for(i = 0 ; i < *(call_ptr + 7); i++)
          buffer[i] = input_getc();

        f->eax = *(call_ptr + 7);
      }
      else
      {
        struct process_file* frame_ptr = list_search(&thread_current()->files, *(call_ptr + 5));

        if(frame_ptr != NULL){
			lock_acquire(&file_lock);
			f->eax = file_read (frame_ptr->ptr, *(call_ptr + 6), *(call_ptr + 7));
			lock_release(&file_lock);
        
		}
        else
        {
			f->eax = -1;
		}
      }
}
void sys_open(uint32_t *call_ptr,struct intr_frame *f){
	  lock_acquire(&file_lock);

      struct file *frame_ptr = filesys_open (*(call_ptr + 1));

      lock_release(&file_lock);
      if(frame_ptr == NULL)
        f->eax = -1;
      else
      {
        struct process_file *call_ptr_file = malloc(sizeof(*call_ptr_file));

        
        call_ptr_file->fd = thread_current()->file_count;
		call_ptr_file->ptr = frame_ptr;
		thread_current()->file_count++;
        list_push_back (&thread_current()->files, &call_ptr_file->elem);
        f->eax = call_ptr_file->fd;
      }
	
}
void is_valid(void *vaddr)
{
  if (!is_user_vaddr(vaddr))
  {
    sys_exit(-1);
    return ;
  }

  void *ptr = pagedir_get_page(thread_current()->pagedir, vaddr);
  if (!ptr)
  {
    sys_exit(-1);
    return ;
  }
}


int sys_exec(char *file_name)
{
  lock_acquire(&file_lock);
   char *temp;
  char *file_name_copy = malloc (strlen(file_name) + 1);
  strlcpy(file_name_copy, file_name, strlen(file_name) + 1);
	  
 

  file_name_copy = strtok_r(file_name_copy, " ", &temp);

  struct file *f = filesys_open (file_name_copy);

  
  if(f != NULL)
  {
	  
	file_close(f);
    lock_release(&file_lock);
    return process_execute(file_name);

  }
  else
  {
    lock_release(&file_lock);
    return -1;

  }
}

void sys_close(struct list* files, int fd)
{
  struct list_elem *elem;

  struct process_file *fi;
  
 elem = list_begin (files);
  while( elem != list_end (files)) 
  {

    fi = list_entry (elem, struct process_file, elem);
    if(fi->fd == fd)
    {
      file_close(fi->ptr);
      list_remove(elem);
      return;
    }
  elem = list_next (elem);
  }
}

void sys_closes(struct list* files)
{
  struct list_elem *element;


  while(!list_empty(files))
  {

    element = list_pop_front(files);

    struct process_file *f = list_entry (element, struct process_file, elem);
    file_close(f->ptr);
    list_remove(element);
    free(f);
  }     
}

struct process_file* list_search(struct list* files, int fd)
{
  struct list_elem *e;

  e = list_begin (files); 
  while(e != list_end (files))
  {
    struct process_file *f = list_entry (e, struct process_file, elem);
    if(f->fd == fd)
      return f;
    e = list_next (e);
  }
  return NULL;
}

void sys_exit(int status)
{
  struct list_elem *e;
  struct thread* cur=thread_current();
  e= list_begin (&cur->parent->child_list); 
  while(e!= list_end (&cur->parent->child_list))
  {
    struct child *f = list_entry (e, struct child, elem);
  
    if(f->tid == cur->tid)
    {
	  f->exit_status = status;
      f->used = true;
      
    }
	e= list_next (e);
  }


  cur->exit_status = status;

  if(cur->parent->wait == cur->tid)
    sema_up(&cur->parent->child_sema);

  thread_exit();
}

