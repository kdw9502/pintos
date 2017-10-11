#include "list.h"
#include "bitmap.h"
#include "hash.h"
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#define MAX_LEN 100// command의 최대길이
#define ARG_LEN 25// argment의 최대길이
#define ST_MAX 50//자료구조의 최대개수 
#define STACK_SIZE 11//stack의 개수

typedef enum DATA_TYPE{LIST,HASH,BITMAP} DATA_TYPE;
typedef union  data_comp{//main 실행에서 이름과 함께 저장될 데이터타입 
	struct list l;
	struct hash h;
	struct bitmap* b;
}data_comp;
typedef struct __data_struct{
	DATA_TYPE type;
	data_comp comp;
	char name[ARG_LEN];
}data_struct;

data_struct *stack[STACK_SIZE];int top=-1;//만들어진 자료구조를 저장할 stack
typedef struct list_item{
	int data;
	struct list_elem elem;
}list_item;

typedef struct hash_item {
	int data;
	struct hash_elem elem;
}hash_item;


void create_stuct(char type,char *name,char bit_cnt,char elem[][ARG_LEN],int elem_num);
void delete_struct(char *name);
void execute(char *input);
data_struct* find_struct(char *name);
void create(char* type_sting,char* name,char* bit_cnt_string);
bool get_command();
void dump_data(char *name);
void list_exe(char *op,char *arg1,char *arg2,char *arg3,char *arg4,char *arg5);
void hash_action(struct hash_elem *e,void *aux);
void hash_exe(char *op,char *arg1,char *arg2,char *arg3,char *arg4,char *arg5);
void bit_exe(char *op,char *arg1,char *arg2,char *arg3,char *arg4,char *arg5);
unsigned hashFunction(const struct hash_elem *e, void *aux);
#define FREE_LIST(iter) (free(list_entry(iter,struct list_item,elem)))
#define FREE_HASH(iter) (free(hash_entry(iter,struct hash_item,elem)))
#define LIST_EN(iter) (list_entry(iter,struct list_item,elem))
#define HASH_EN(iter) (hash_entry(iter,struct hash_item,elem))
