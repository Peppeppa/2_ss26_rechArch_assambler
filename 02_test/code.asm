section .text
global main

main:
  mov eax, 10 
  mov ebx, 5 

  cmp eax, ebx
  jg greater

  mov ecx, 0 
  jmp ende 

greater:
  mov ecx, 1 

ende:
  mov eax, 0
  ret 
