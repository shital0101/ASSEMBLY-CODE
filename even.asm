;;Program For to print the given number is even or odd.

section .data
	msg db "Enter the number",0
	msg1 db "%d",0
	msg2 db "%d number is even",10,0
	msg3 db "%d number is odd",10,0
section .bss
	n resd 1
section .text
	global main
	extern printf,scanf,puts
main:
	push msg
	call puts
	add esp,4

	push n
	push msg1
	call scanf
	add esp,8

	xor edx,edx
	mov eax,dword[n]
	mov ebx,2
	div ebx

	cmp edx,0
	jnz odd
        push dword[n]
	push msg2
        call printf
        add esp,8
        jmp exit


odd:
	push dword[n]
	push msg3
	call printf
	add esp,8
	jmp exit

exit:
	ret
