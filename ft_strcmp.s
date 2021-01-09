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
	mov rax, 0		; initialize rax register to 0. rax = return value
	mov rcx, 0		; loop index to 0
	jmp while		;

incr:
	inc rcx			;
	jmp while		;

while:
	mov bl, byte [rsi + rcx]	; s2[i] in tmp
	mov al, byte [rdi + rcx]	; s1[i] in tmp
	cmp bl, 0					; if s2[i] == 0
	je end						; end of function
	cmp al, 0					; if s1[i] == 0
	je end						; end of function
	cmp al, bl					; if s1[i] == s2[i]
	je incr						; i++ and loop

end:
	sub rax, rbx		; s1[i] - s2[i]
	ret					; ret value of rax
