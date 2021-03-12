; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_read.s                                          :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/01/10 02:06:08 by bahaas            #+#    #+#              #
;    Updated: 2021/01/10 02:06:08 by bahaas           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

;	ssize_t ft_read(int fd, void *buf, size_t count)
;	rdi = fd, rsi = buf, rdx = count

	section .text
	global	ft_read
	extern	__errno_location

ft_read:
	mov rax, 0	; 0 is for read syscall code
	syscall		;
	cmp rax, 0	; if rax < after syscall, error happend during syscall
	jl errno	; then we want to display the error number
	ret			; otherwise fill the buffer with size of count to the fd

errno:
	neg rax							; absolute value
	mov rdi, rax					; set up rdi to call errno | save errno on stack
	call __errno_location wrt ..plt ; errno_loc stored on rdi, output mem addr of errno
	mov [rax], rdi					; rdi store errno_loc return value in mem location of where rax point
	mov rax, -1						; set rax to -1 reporting an error occured
	ret								;
