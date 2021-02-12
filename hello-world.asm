section .data
msg db "Hello new world!", 0x0a

section .text
global _main

_main:
  mov rax, msg
  call strlen
  call print
  call exit

exit:
  mov rax, 0x2000001
  mov rdi, 0
  syscall
  ret

print:
  mov rdi, 1
  mov rsi, msg
  mov rdx, rax
  mov rax, 0x2000004
  syscall
  ret

strlen:
  push rbx
  mov rbx, rax

nextchar:
  cmp byte [rax], 0
  jz finished
  inc rax
  jmp nextchar

finished:
  sub rax, rbx
  pop rbx
  ret
