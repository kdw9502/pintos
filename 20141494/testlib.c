#include "testlib.h"


unsigned hash_e_int(const struct hash_elem *e, void *aux){
	return hash_int(HASH_EN(e)->data);
}
bool hash_compare(struct hash_elem *a, struct hash_elem *b, void *aux){
	int data1=0;
	int data2=0;

	data1= HASH_EN(a)->data;
	data2= HASH_EN(b)->data;

	if(data1 < data2){
		return true;
	}
	else {
		return false;
	}
}

bool list_compare(struct list_elem *a, struct list_elem *b, void *aux){

	int data1=0;
	int data2=0;

	data1= LIST_EN(a)->data;
	data2= LIST_EN(b)->data;

	if(data1 < data2){
		return true;
	}
	else {
		return false;
	}
}

list_less_func *list_less = (void*)&list_compare;

hash_hash_func *hash_func=&hash_e_int;
hash_less_func *hash_less=(void*)&hash_compare;

void create_struct(DATA_TYPE t,char* name,int bit_cnt){
	if(top>=STACK_SIZE)return;
	data_struct *st=(data_struct*)malloc(sizeof(data_struct));
	st->type=t;
	if(t==LIST){
		list_init(&(st->comp.l));
		//		printf("%d %d\n",list_begin(&(st->comp.l)),list_end(&(st->comp.l)));
	}
	else if(t==HASH){
		hash_init(&st->comp.h,hash_func,hash_less,NULL);
	}
	else if(t==BITMAP){
		st->comp.b=bitmap_create(bit_cnt);
	}
	strcpy(st->name,name);
	top++;
	stack[top]=st;
}
data_struct* find_struct(char *name){
	int iter=0,i;
	data_struct* re;
	while(strcmp(stack[iter]->name,name)&&iter<=top)iter++;//이름이 다를경우시행하여 이름찾기
	if(top<iter)return NULL;// 이름을 가진 자료구조가 없을경우
	re= stack[iter];
	//	printf("find");
	return re;
}
void delete_struct(char *name){
	int iter=0,i;
	while(strcmp(stack[iter]->name,name)&&iter<=top)iter++;//이름이 다를경우시행하여 이름찾기
	if(top<iter)return ;// 이름을 가진 자료구조가 없을경우
	else{
		free(stack[iter]);//make dangling pointer, will fixed
		for(i=iter;i<top;i++)stack[i]=stack[i+1];
		stack[top]=NULL;
		top--;
		return ;
	}
}
void dump_data(char *name){
	data_struct* st;
	int i;
	struct list_elem* liter;
	struct hash_iterator* hiter;
	struct list* l;struct hash* h;struct bitmap *bit;
	hiter=(struct hash_iterator*)malloc(sizeof(struct hash_iterator));
	st=find_struct(name);
	if(st->type==LIST){
		l=&(st->comp.l);
		if(list_empty(l)){
			return;
		}
		liter=list_begin(l);
		do{

			printf("%d ",LIST_EN(liter)->data);
			liter=list_next(liter);
		}while(liter!=list_end(l));
		printf("\n");

	}
	else if(st->type==HASH){
		h=&(st->comp.h);
		if(hash_empty(h))return;
		hash_first(hiter,h);
		while(hash_next(hiter)){
			printf("%d ",HASH_EN(hash_cur(hiter))->data);
		}
		printf("\n");
	}
	else if(st->type==BITMAP){
		bit=st->comp.b;
		for(i=0;i<bitmap_size(bit);i++){
			if(bitmap_test(bit,i)==true) printf("1");
			else printf("0");
		}
		printf("\n");
	}
}

void create(char* type_string,char* name,char* bit_cnt_string){
	DATA_TYPE t;
	int bit_cnt;
	if(!strcmp(type_string,"list"))t=LIST;
	else if(!strcmp(type_string,"hashtable"))t=HASH;
	else if(!strcmp(type_string,"bitmap"))t=BITMAP;
	else return;
	sscanf(bit_cnt_string,"%d",&bit_cnt);
	create_struct(t,name,bit_cnt);


}
void list_exe(char *op,char *arg1,char *arg2,char *arg3,char *arg4,char *arg5){
	//arg1은 보통 sturct name
	data_struct *st=find_struct(arg1),*st2;
	struct list* ex_list=&(st->comp.l), *ex_list2; //시행할 list
	struct list_elem* iter,*iter2,*iter3;
	iter=list_begin(ex_list);
	list_item *list_new;
	int input[10],i,j;//argment를 int로 사용할경우
	if(!strcmp(op,"list_insert")){
		list_new=(list_item*)malloc(sizeof(list_item));
		sscanf(arg2,"%d",&input[0]);
		sscanf(arg3,"%d",&input[1]);

		list_new->data= input[1];
		for(i=0;i<input[0] ;i++){
			iter=list_next(iter);
		}
		list_insert(iter,&(list_new->elem));
	}
	else if(!strcmp(op,"list_splice")){
		sscanf(arg2,"%d",&input[0]);
		sscanf(arg4,"%d",&input[1]);
		sscanf(arg5,"%d",&input[2]);

		st2=find_struct(arg3);
		ex_list2=&(st2->comp.l);
		iter3=iter2=list_begin(ex_list2);

		for(i=0;i<input[0];i++)
			iter=list_next(iter);
		for(i=0;i<input[1];i++)
			iter2=list_next(iter2);
		for(i=0;i<input[2];i++)
			iter3=list_next(iter3);
//		printf("debug:%d %d \n",LIST_EN(iter2)->data,LIST_EN(iter3)->data);
		list_splice(iter,iter2,iter3);
	}
	else if(!strcmp(op,"list_swap")){
		sscanf(arg2,"%d",&input[0]);
		sscanf(arg3,"%d",&input[1]);
		iter2=iter;
		for(i=0;i<input[0];i++)
			iter=list_next(iter);
		for(i=0;i<input[1];i++)
			iter2=list_next(iter2);
		list_swap(iter,iter2);

	}
	else if(!strcmp(op,"list_push_front")){
		sscanf(arg2,"%d",&input[0]);
		list_new=(list_item*)malloc(sizeof(list_item));
		list_new->data=input[0];
		list_push_front(ex_list,&(list_new->elem));

	}
	else if(!strcmp(op,"list_push_back")){
		sscanf(arg2,"%d",&input[0]);
		list_new=(list_item*)malloc(sizeof(list_item));
		list_new->data=input[0];
		list_push_back(ex_list,&(list_new->elem));
	}		
	else if(!strcmp(op,"list_remove")){
		sscanf(arg2,"%d",&input[0]);
		for(i=0;i<input[0];i++)
			iter=list_next(iter);
		iter=list_remove(iter);
		//		FREE_LIST(iter);	

	}
	else if(!strcmp(op,"list_pop_front")){
		iter=list_pop_front(ex_list);
		FREE_LIST(iter);	
	}
	else if(!strcmp(op,"list_pop_back")){
		iter=list_pop_back(ex_list);
		FREE_LIST(iter);	
	}
	else if(!strcmp(op,"list_back")){
		iter=list_back(ex_list);
		printf("%d\n",LIST_EN(iter)->data);
	}
	else if(!strcmp(op,"list_front")){
		iter=list_front(ex_list);
		printf("%d\n",LIST_EN(iter)->data);
	}

	else if(!strcmp(op,"list_size")){
		printf("%lu\n",list_size(ex_list));
	}
	else if(!strcmp(op,"list_empty")){
		list_empty(ex_list)?printf("true\n"):printf("false\n");
	}
	else if(!strcmp(op,"list_reverse")){
		list_reverse(ex_list);
	}
	else if(!strcmp(op,"list_sort")){
		list_sort(ex_list,list_less,0);
	}
	else if(!strcmp(op,"list_insert_ordered")){
		sscanf(arg2,"%d",&input[0]);
		list_new=(list_item*)malloc(sizeof(list_item));
		list_new->data=input[0];
		list_insert_ordered(ex_list,&(list_new->elem),list_less,NULL);
	}
	else if(!strcmp(op,"list_unique")){
		if(!strcmp(arg2,"")){ //하나의 list 출력
			list_unique(ex_list,0,list_less,0);
		}
		else{//2개의 리스트출력
			st2=find_struct(arg2);
			ex_list2=&(st2->comp.l);
			list_unique(ex_list,ex_list2,list_less,0);

		}
	}
	else if(!strcmp(op,"list_max")){
		iter=list_max(ex_list,list_less,0);
		printf("%d\n",LIST_EN(iter)->data);
	}
	else if(!strcmp(op,"list_min")){
		iter=list_min(ex_list,list_less,0);
		printf("%d\n",LIST_EN(iter)->data);
	}



}
void hash_action(struct hash_elem *e,void *aux){

}
hash_action_func *hash_act=&hash_action;
void hash_exe(char *op,char *arg1,char *arg2,char *arg3,char *arg4,char *arg5){

	hash_item *hash_new;
	data_struct *st=find_struct(arg1),*st2;
	struct hash* ex_hash=&(st->comp.h), *ex_hash2; //시행할 hash
	struct hash_iterator *iter;
	iter=(struct hash_iterator*)malloc(sizeof(struct hash_iterator));
	int input[10],i,j;//argment를 int로 사용할경우
	if(!strcmp(op,"hash_insert")){
		sscanf(arg2,"%d",&input[0]);
		hash_new=(hash_item*)malloc(sizeof(hash_item));
		hash_new->data=input[0];
		hash_insert(ex_hash,&(hash_new->elem));
	}
	else if(!strcmp(op,"hash_replace")){
		hash_first(iter,ex_hash);
		sscanf(arg2,"%d",&input[0]);
		hash_new=(hash_item*)malloc(sizeof(hash_item));
		hash_new->data=input[0];

		while(hash_next(iter)){
			if(input[0]==HASH_EN(hash_cur(iter))->data){
				hash_replace(ex_hash,&(hash_new->elem));
				break;
			}
		}
		if(!hash_cur(iter)) hash_replace(ex_hash,&(hash_new->elem));

	}
	else if(!strcmp(op,"hash_find")){
		hash_first(iter,ex_hash);
		sscanf(arg2,"%d",&input[0]);

		while(hash_next(iter)){
			if(HASH_EN(hash_cur(iter))->data==input[0]){
				printf("%d\n",input[0]);
				break;
			}
		}
	}
	else if(!strcmp(op,"hash_delete")){
		hash_first(iter,ex_hash);
		sscanf(arg2,"%d",&input[0]);

		while(hash_next(iter)){
			if(HASH_EN(hash_cur(iter))->data==input[0]){
				hash_delete(ex_hash,hash_cur(iter));
				break;
			}

		}
	}
	else if(!strcmp(op,"hash_clear")){
		hash_clear(ex_hash,hash_act);
	}
	else if(!strcmp(op,"hash_size")){
		printf("%lu\n",hash_size(ex_hash));
	}
	else if(!strcmp(op,"hash_empty")){
		hash_empty(ex_hash)?printf("true\n"):printf("false\n");
	}

	else if(!strcmp(op,"hash_apply")){
		hash_first(iter,ex_hash);
		if(!strcmp(arg2,"square")){
			while(hash_next(iter)){
				HASH_EN(hash_cur(iter))->data*=HASH_EN(hash_cur(iter))->data;
			}
		}
		else if(!strcmp(arg2,"triple")){
			while(hash_next(iter)){
			HASH_EN(hash_cur(iter))->data*=HASH_EN(hash_cur(iter))->data*HASH_EN(hash_cur(iter))->data;
			}
		}
	}
}
void bit_exe(char *op,char *arg1,char *arg2,char *arg3,char *arg4,char *arg5){
	
	data_struct *st=find_struct(arg1),*st2;
	struct bitmap* ex_bit=st->comp.b; //시행할 bitmap
	unsigned long bits;
	int input[10],i,j;//argment를 int로 사용할경우
	bool t;
	sscanf(arg2,"%d",&input[0]);
	sscanf(arg3,"%d",&input[1]);
	if(!strcmp(op,"bitmap_size")){
		printf("%lu\n",bitmap_size(ex_bit));	
	}
	else if(!strcmp(op,"bitmap_set")){
		bitmap_set(ex_bit,input[0],!strcmp(arg3,"true"));
	}
	else if(!strcmp(op,"bitmap_mark")){
		bitmap_mark(ex_bit,input[0]);
	}
	else if(!strcmp(op,"bitmap_reset")){
		bitmap_reset(ex_bit,input[0]);
	}

	else if(!strcmp(op,"bitmap_flip")){
		bitmap_flip(ex_bit,input[0]);
	}
	else if(!strcmp(op,"bitmap_test")){
		printf("%s\n",bitmap_test(ex_bit,input[0])?"true":"false");
	}
	else if(!strcmp(op,"bitmap_set_all")){
		bitmap_set_all(ex_bit,!strcmp(arg2,"true"));
	}
	else if(!strcmp(op,"bitmap_set_multiple")){
		bitmap_set_multiple(ex_bit,input[0],input[1],!strcmp(arg4,"true"));
	}
	else if(!strcmp(op,"bitmap_count")){
		printf("%lu\n",bitmap_count(ex_bit,input[0],input[1],!strcmp(arg4,"true")));
	}
	else if(!strcmp(op,"bitmap_contains")){
		printf("%s\n",bitmap_contains(ex_bit,input[0],input[1],!strcmp(arg4,"true"))?"true":"false");

	}
	else if(!strcmp(op,"bitmap_any")){
		printf("%s\n",bitmap_any(ex_bit,input[0],input[1])?"true":"false");
	}
	else if(!strcmp(op,"bitmap_none")){
		printf("%s\n",bitmap_none(ex_bit,input[0],input[1])?"true":"false");
	}
	else if(!strcmp(op,"bitmap_all")){
		printf("%s\n",bitmap_all(ex_bit,input[0],input[1])?"true":"false");
	}
	else if(!strcmp(op,"bitmap_scan_and_flip")){
		printf("%u\n",(size_t)bitmap_scan_and_flip(ex_bit,input[0],input[1],!strcmp(arg4,"true")));
	}
	else if(!strcmp(op,"bitmap_scan")){
		printf("%u\n",(size_t)bitmap_scan(ex_bit,input[0],input[1],!strcmp(arg4,"true")));
	}
	else if(!strcmp(op,"bitmap_dump")){
		bitmap_dump(ex_bit);
	}
	else if(!strcmp(op,"bitmap_expand")){
		ex_bit=bitmap_expand(ex_bit,input[0]);
	}

}


/*execute command*/
void execute(char *input){
	char arg[8][ARG_LEN]={0};
	int arg_num;
	int argNum=sscanf(input,"%s %s %s %s %s %s %s",arg[0],arg[1],arg[2],arg[3],arg[4],arg[5],arg[6]);
	if(strcmp(arg[0],"create")==0){
		create(arg[1],arg[2],arg[3]);
	}
	else if(strcmp(arg[0],"delete")==0){
		delete_struct(arg[1]);	
	}	
	else if(strcmp(arg[0],"dumpdata")==0){
		dump_data(arg[1]);
	}
	else if(strncmp(arg[0],"list",4)==0){
		list_exe(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5]);
	}
	else if(strncmp(arg[0],"hash",4)==0){
		hash_exe(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5]);
	}
	else if(strncmp(arg[0],"bitmap",6)==0){
//		printf("%s",arg[0]);
		bit_exe(arg[0],arg[1],arg[2],arg[3],arg[4],arg[5]);
	}

}
/*get command*/
bool get_command(){
	char input[MAX_LEN+1],arg1[ARG_LEN];
	if(fgets(input,MAX_LEN,stdin)==0)return false;
	sscanf(input,"%s",arg1);
	if(strcmp(arg1,"quit")==0)
		return false;
	else{
		execute(input);
		return true;
	}
}


int main(){
	while(get_command());
	return 0;

}

