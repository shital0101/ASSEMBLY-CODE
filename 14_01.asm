section .data
	a dd 10
	b dd 20
	msg db "Addition of %d and %d is %d",10,0
section .bss
	c resd 1
section .text
	global main
	extern printf
main:
	;; add a,b
	mov eax,dword[a]
	mov ebx,dword[b]
	add eax,ebx
	mov dword[c],eax

	push dword[c]
	push dword[b]
	push dword[a]
	push msg
	call printf
	add esp,16
	ret
