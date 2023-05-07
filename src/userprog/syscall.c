#include "userprog/syscall.h"
#include <stdio.h>
#include <syscall-nr.h>
#include "threads/interrupt.h"
#include "threads/thread.h"
#include "userprog/process.h"

#include <stdbool.h>
#include "userprog/pagedir.h"
#include "threads/vaddr.h"
#include "filesys/file.h"
#include "filesys/inode.h"
#include "filesys/filesys.h"
#include "devices/input.h"


static void syscall_handler(struct intr_frame*);

static void syscall_halt(struct intr_frame*,uint32_t*);
static void syscall_exit(struct intr_frame*,uint32_t*);
static void syscall_exec(struct intr_frame*,uint32_t*);
static void syscall_wait(struct intr_frame*,uint32_t*);
static void syscall_create(struct intr_frame*,uint32_t*);
static void syscall_remove(struct intr_frame*,uint32_t*);
static void syscall_open(struct intr_frame*,uint32_t*);
static void syscall_filesize(struct intr_frame*,uint32_t*);
static void syscall_read(struct intr_frame*,uint32_t*);
static void syscall_write(struct intr_frame*,uint32_t*);
static void syscall_seek(struct intr_frame*,uint32_t*);
static void syscall_tell(struct intr_frame*,uint32_t*);
static void syscall_close(struct intr_frame*,uint32_t*);
static void syscall_practice(struct intr_frame*,uint32_t*);



static bool valid_addr(void* addr)
{
  return is_user_vaddr(addr)&&
  pagedir_get_page(thread_current()->pcb->pagedir,addr);
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
  /* args[i] */
  switch(args[0]){
    case SYS_READ:
    case SYS_WRITE:
      if(!verify_ptr(&args[3],sizeof(unsigned))){
        printf("%s: exit(-1)\n",thread_current()->pcb->process_name);
        process_exit(); 
      }
    case SYS_CREATE:
    case SYS_SEEK:
      if(!verify_ptr(&args[2],sizeof(unsigned))){
        printf("%s: exit(-1)\n",thread_current()->pcb->process_name);
        process_exit();
      }
    case SYS_EXEC:
    case SYS_REMOVE:
    case SYS_OPEN:
    case SYS_FILESIZE:
    case SYS_TELL:
    case SYS_CLOSE:
      if(!verify_ptr(&args[1],sizeof(uint32_t))){
        printf("%s: exit(-1)\n",thread_current()->pcb->process_name);
        process_exit();
      }
    default:
      break;
  }


  /* Verify the  args content */
  switch(args[0]){
    case SYS_EXEC:
    case SYS_CREATE:
    case SYS_REMOVE:
    case SYS_OPEN:
      if(!verify_str((char*)args[1])){
        args[0]=SYS_EXIT;
        args[1]=-1;
      }
      break;
    case SYS_READ:
    case SYS_WRITE:
      if(!verify_ptr(args[2],args[3]*sizeof(char))){
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
    case SYS_CREATE: /* Create a file. */
      syscall_create(f,args);
      break;
    case SYS_REMOVE: /* Delete a file. */
      syscall_remove(f,args);
      break;
    case SYS_OPEN: /* Open a file. */
      syscall_open(f,args);
      break;
    case SYS_FILESIZE: /* Obtain a file`s size. */
      syscall_filesize(f,args);
      break;
    case SYS_READ: /* Read from a file. */
      syscall_read(f,args);
      break;
    case SYS_WRITE: /* Write to a file. */
      syscall_write(f,args);
      break;
    case SYS_SEEK: /* Change position in a file. */
      syscall_seek(f,args);
      break;
    case SYS_TELL: /* Report current position in a file. */
      syscall_tell(f,args);
      break;
    case SYS_CLOSE: /* Close a file. */
      syscall_close(f,args);
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
  struct thread* cur=thread_current();
  int res=args[1];
  printf("%s: exit(%d)\n",thread_current()->pcb->process_name,args[1]);
  cur->pcb->exit_return=res;
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

/* SYS_CREATE */
static void syscall_create(struct intr_frame* f UNUSED,uint32_t* args)
{
  const char* name=args[1];
  unsigned initial_size=args[2];
  size_t name_len=strlen(name);
  if(name_len==0){
    /* empty */
    printf("%s: exit(-1)\n",thread_current()->pcb->process_name);
    process_exit();
  }

  f->eax=filesys_create(name,initial_size);
}

/* SYS_REMOVE */
static void syscall_remove(struct intr_frame* f UNUSED,uint32_t* args)
{
  f->eax=filesys_remove(args[1]);
}
/* SYS_OPEN */
static void syscall_open(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  const char* fn=args[1];
  size_t name_len=strlen(fn);
  struct file* file=NULL;
  int fd;
  f->eax=-1;
  if(name_len==0){
    /* empty */
    return;
  }
  fd=next_empty_fd_table(&pcb->fd_table);
  if(fd==-1){
    // fd_table is full
    return;
  }
  file=filesys_open(fn);
  if(file==NULL){
    // open failed
    return ;
  }

  pcb->fd_table.fds[fd].fd_flags=1;
  pcb->fd_table.fds[fd].file_ptr=file;
  f->eax=fd;

}
/* SYS_FILESIZE */
static void syscall_filesize(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  int fd=args[1];
  struct file* file=get_file_fdt(&pcb->fd_table,fd);
  if(file==NULL){
    f->eax=-1;
  }else{
    f->eax=file_length(file);
  }
}
/* SYS_READ */
static void syscall_read(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  int fd=args[1];
  char* buffer=args[2];
  unsigned size=args[3];
  struct file* file;
  f->eax=-1;
  if(fd==STDIN_FILENO){
    unsigned int i;
    for(i=0;i<size;++i){
      buffer[i]=input_getc();
    }
    f->eax=i;
    return;
  }
  file=get_file_fdt(&pcb->fd_table,fd);
  if(file==NULL){
    return;
  }
  f->eax=file_read(file,buffer,size);
}

/* SYS_WRITE */
static void syscall_write(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  int fd=args[1];
  char*buffer=args[2];
  unsigned size=args[3];
  struct file* file;
  f->eax=-1;
  if(fd==STDOUT_FILENO){
    putbuf(buffer,size);
    f->eax=size;
    return;
  }
  file=get_file_fdt(&pcb->fd_table,fd);
  if(file==NULL){
    return;
  }
  f->eax=file_write(file,buffer,size);

}

/* SYS_SEEK */
static void syscall_seek(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  int fd=args[1];
  unsigned position=args[2];
  struct file* file;
  f->eax=-1;
  file=get_file_fdt(&pcb->fd_table,fd);
  if(file==NULL){
    return;
  }
  file_seek(file,position);

}
/* SYS_TELL */
static void syscall_tell(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  int fd=args[1];
  struct file* file;
  f->eax=-1;
  file=get_file_fdt(&pcb->fd_table,fd);
  if(file==NULL){
    return;
  }
  f->eax=file_tell(file);

}
/* SYS_CLOSE */
static void syscall_close(struct intr_frame* f UNUSED,uint32_t* args)
{
  struct process* pcb=thread_current()->pcb;
  int fd=args[1];
  struct file* file;
  f->eax=-1;
  file=get_file_fdt(&pcb->fd_table,fd);
  if(file==NULL){
    return;
  }
  file_close(file);
  pcb->fd_table.fds[fd].fd_flags=0;
  pcb->fd_table.fds[fd].file_ptr=NULL;

}
/* SYS_PRACTICE */
static void syscall_practice(struct intr_frame* f,uint32_t* args)
{
  f->eax=args[1]+1;
}









