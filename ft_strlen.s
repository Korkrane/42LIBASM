; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strlen.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2021/01/08 12:09:48 by bahaas            #+#    #+#              #
;    Updated: 2021/01/08 12:09:48 by bahaas           ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

; size_t ft_strlen(const char *s)
; rdi = s, rcx = loop index

	section	.text
	global	ft_strlen

ft_strlen:
	mov rax, 0		; initialize rax register to 0. rax = return value
	mov rcx, 0		; loop index to 0
	cmp rdi, 0		; cmp if *str in call of ft_strlen is not null
	je end			; if comparison true thend ret rax that is set to 0 in end

while:	
	cmp byte [rdi + rcx], 0	; cmp rdi[rcx] to 0 
	je  end					; if rdi[rcx] == \0 then end function
	inc rax					; otherwise inc ret value
	inc rcx					; and loop index
	jmp while				; loop

end:
	ret					; ret value of rax
