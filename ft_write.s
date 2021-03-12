; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_write.s                                         :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/01/08 14:46:24 by bahaas            #+#    #+#              #
;    Updated: 2021/01/08 14:46:24 by bahaas           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

; ssize_t ft_write(int fd, const void *buf, size_t count)
; rdi = fd, rsi = buf, rdx = count

	section .text
	global	ft_write
	extern	__errno_location ; tell the assembler, function is defined elsewhere

ft_write:
	mov rax, 1		; 1 is for write syscall code
	syscall			; syscall depending of rax value  (ex:0 = read, 1 = write..)
	cmp rax, 0		; if rax < 0 after syscall, error happend during syscall
	jl errno		; then we want to display the error number
	ret				; otherwise just write the rsi = buf and rax = count

errno:
	neg rax							; absolute value
	mov rdi, rax					; set up rdi to call errno | save errno on stack
	call __errno_location wrt ..plt	; errno_loc stored on rdi, output mem addr of errno
	mov [rax], rdi					; rdi store errno_loc return value in mem location of where rax point
	mov rax, -1						; set rax to -1 reporting an error occured
	ret								;
