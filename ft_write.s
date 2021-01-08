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

; rsi = char *buf
; rdi = int fd
; rdx = size_t count

	section .txt
	global	ft_write
	extern	__errno_location ; tell the asse;bler function is defined elsewhere

ft_write:
	mov rax, 1		; 1 is for write syscall code
	syscall			; syscall depending of rax value  (ex:0 = read, 1 = write..)
	cmp rax, 0		; if rax < 0 after syscall, error happend during syscall
	jl errno		; then we want to displat the error number
	ret				; otherwise just write the rsi

errno:

	call __errno_location	; call the function via extern
	ret
