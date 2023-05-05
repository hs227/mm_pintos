#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "userprog/process.h"

#include <stdbool.h>
#include "userprog/pagedir.h"
#include "threads/vaddr.h"

static void syscall_handler(struct intr_frame*);

static void syscall_halt(struct intr_frame*,uint32_t*);
static void syscall_exit(struct intr_frame*,uint32_t*);
static void syscall_exec(struct intr_frame*,uint32_t*);
static void syscall_wait(struct intr_frame*,uint32_t*);
static void syscall_write(struct intr_frame*,uint32_t*);
static void syscall_practice(struct intr_frame*,uint32_t*);


static bool valid_addr(void* addr);
static bool verify_ptr(void* ptr,size_t size);




static bool valid_addr(void* addr)
{
  bool res1=is_user_vaddr(addr);
  bool res2=pagedir_get_page(thread_current()->pcb->pagedir,addr);
  return res1&&res2;
}

static bool verify_ptr(void* ptr,size_t size)
{
  bool res1=valid_addr(ptr);
  bool res2=valid_addr(ptr+size);
  return res1&&res2;
}

static bool verify_str(char* ptr)
{
  while(1){
    if(valid_addr(ptr)){
      if(*(char*)ptr=='\0'){
        return true;
      }
    }else{
      return false;
    }
    ptr++; 
  }

}

void syscall_init(void) { 
  intr_register_int(0x30, 3, INTR_ON, syscall_handler, "syscall"); 
}

static void syscall_handler(struct intr_frame* f UNUSED) {
  uint32_t* args = ((uint32_t*)f->esp);
  /*
   * The following print statement, if uncommented, will print out the syscall
   * number whenever a process enters a system call. You might find it useful
   * when debugging. It will cause tests to fail, however, so you should not
   * include it in your final submission.
   */

  //printf("System call number: %d\n", args[0]);
  
  /* verify the args pointer */
  /* args[0] */
  if(!verify_ptr(&args[0],sizeof(uint32_t))){
    printf("%s: exit(-1)\n",thread_current()->pcb->process_name);
    process_exit();
  }
  /* args[1] */
  switch(args[0]){
    case SYS_EXEC:
      if(!verify_ptr(&args[1],sizeof(uint32_t))){
        printf("%s: exit(-1)\n",thread_current()->pcb->process_name);
        process_exit();
      }
      break;
    default:
      break;
  }


  /* Verify the  args content */
  switch(args[0]){
    case SYS_EXEC:
      if(!verify_str((char*)args[1])){
        args[0]=SYS_EXIT;
        args[1]=-1;
      }
      break;
    default:
      break;
  }

  /* handle */
  switch(args[0]){
    case SYS_HALT: /* Halt the operating system. */
      syscall_halt(f,args);
      break;
    case SYS_EXIT: /* Terminate this process. */
      syscall_exit(f,args);
      break;
    case SYS_EXEC: /* Start another process. */
      syscall_exec(f,args);
      break;
    case SYS_WAIT: /* Wait for a child process to die. */
      syscall_wait(f,args);
      break;
    case SYS_WRITE: /* Write to a file. */
      syscall_write(f,args);
      break;
    case SYS_PRACTICE: /* Returns args incremented by 1. */
      syscall_practice(f,args);
      break;
    default:
      break;
  }

}

/* SYS_HALT */
static void syscall_halt(struct intr_frame* f UNUSED,uint32_t* args)
{
  //shutdown_power_off();
}

/* SYS_EXIT */
static void syscall_exit(struct intr_frame* f UNUSED,uint32_t* args)
{
  f->eax=args[1];
  //msg("bbbbb\n");
  printf("%s: exit(%d)\n",thread_current()->pcb->process_name,args[1]);
  process_exit();
}

/* SYS_EXEC */
static void syscall_exec(struct intr_frame* f UNUSED,uint32_t* args)
{
  f->eax=process_execute(args[1]);
}

/* SYS_WAIT */
static void syscall_wait(struct intr_frame* f UNUSED,uint32_t* args)
{
  f->eax=process_wait(args[1]);
}


/* SYS_WRITE */
static void syscall_write(struct intr_frame* f UNUSED,uint32_t* args)
{
  int fd=args[1];
  const void* buffer=args[2];
  unsigned size=args[3];
  uint32_t res_size=0;

  if(fd==STDOUT_FILENO){
    putbuf(buffer,size);
    res_size=size;
  }else{
    syscall_exit(f,args);  
  }
  f->eax=res_size;
}

/* SYS_PRACTICE */
static void syscall_practice(struct intr_frame* f,uint32_t* args)
{
  f->eax=args[1]+1;
}









