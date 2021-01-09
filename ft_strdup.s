; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strdup.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/01/09 16:12:29 by bahaas            #+#    #+#              #
;    Updated: 2021/01/09 16:12:29 by bahaas           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

; char *ft_strdup(const char *s)
; rdi = s

	section	.text
	global	ft_strdup
	extern	malloc
	extern	ft_strlen
	extern	ft_strcpy

ft_strdup:
	push rdi			; allow me to use rdi register (in that case char *s)
	call ft_strlen		; take prec reg as arg (rdi), return in rax
	inc rax				; for the +1 for \0
	mov rdi, rax		; rax value in rdi
	call malloc			; malloc space of rdi (len + 1)
	pop rdi				; reset rdi to char *s
	mov rsi, rdi		; prep for strcpy | *s to *src
	mov rdi, rax		; prep for strcpy | rax to *dst
	jmp ft_strcpy		; rax = cpy of *s
