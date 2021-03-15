; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcpy.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/01/08 12:58:07 by bahaas            #+#    #+#              #
;    Updated: 2021/01/08 12:58:07 by bahaas           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

; char *ft_strcpy(char *dest, char *src)
; rdi = dest, rsi = src, rcx = loop index

	section .text
	global	ft_strcpy

ft_strcpy:
	mov rax, 0		;	initialize rax register to 0. rax = return value
	mov rcx, 0		;	loop index to 0.
	mov r15, 0

while:
	mov r15b, byte [rsi + rcx]	; swap operation, tmp = rsi[rcx]
	mov byte [rdi + rcx], r15b	; copy the char from rsi (placed in r15b) to rdi
	cmp r15b, byte 0			; if == 0
	je end						; then end function
	inc rcx						; inc loop index
	jmp while					; loop the copy

end:
	mov rax, rdi	;	put dst to rax
	ret				;	ret value of rax
