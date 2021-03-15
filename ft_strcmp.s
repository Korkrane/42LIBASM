; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcmp.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/01/09 15:13:41 by bahaas            #+#    #+#              #
;    Updated: 2021/01/09 15:13:41 by bahaas           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

; int ft_strcmp(const char *s1, const char *s2)
; rdi = s1, rsi = s2

	section	.text
	global	ft_strcmp

ft_strcmp:
	mov rax, 0		;	initialize rax register to 0. rax = return value
	mov rcx, 0		;	loop index to 0.
	mov r15, 0

while:
	mov	al,	byte [rdi + rcx]	; al = s1[rdx]
	mov r15b, byte [rsi + rcx]	; s2[i] in tmp
	cmp r15b, 0					; if s2[i] == 0
	je end						; end of function
	cmp al, 0					; if s1[i] == 0
	je end						; end of function
	cmp al, r15b				; s1[i] == s2[i] ?
	jnz end						; if != end of function else incr

incr:
	inc rcx			;
	jmp while		;

end:
	sub rax, r15		; s1[i] - s2[i]
	ret					; ret value of rax
