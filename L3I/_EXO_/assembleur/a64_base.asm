bits 64 

section .data
  message db 'Hello world !', 10 

section .text
  global _start
  _start:
  
    mov rax, 1 
    mov rdi, 1 
    mov rsi, message 
    mov rdx, 13+1 
    syscall 

    mov rax, 60
    mov rdi, 0 
    syscall