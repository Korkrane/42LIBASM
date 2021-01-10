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
	mov rax, 0
	syscall
	cmp rax, 0
	jl errno
	ret

; 3 methods works for errno need better understanding on 3rd before vog_push
errno:
	neg rax
	mov rdi, rax
	call __errno_location
	mov [rax], rdi
	mov rax, -1
	ret
	
	;neg rax
	;push rax
	;call __errno_location
	;pop rdx
	;mov [rax], rdx
	;mov rax, -1
	;ret
	
	;push rbp
	;mov rsp, rbp
	;call __errno_location
	;mov rax, -1
	;pop rbp
	;ret

