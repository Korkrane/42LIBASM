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

while:
	mov bl, byte [rsi + rcx]	; swap operation, [rsi] = rsi[rcx]
	mov byte [rdi + rcx], bl	; copy the char from rsi (placed in bl) to rdi
	cmp bl, byte 0				; equivalent to check if rsi[rcx] == \0
	je end						; then end function
	inc rcx						; 
	jmp while					; loop the copy

end:
	mov rax, rdi	;	put content of dest to rax (content of src due to swap)
	ret				;	ret value of rax
