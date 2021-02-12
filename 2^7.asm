global _main

_main:
  mov rbx, 1
  mov rcx, 7

label:
  add rbx, rbx
  dec rcx
  cmp rcx, 0
  jg label

  mov rax, 0x2000001
  mov rdi, rbx
  syscall
