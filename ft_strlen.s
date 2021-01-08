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

	section	.txt
	global	ft_strlen

ft_strlen:
	mov rax, 0		; initialize rax register to 0. rax = return value
	cmp rdi, 0		; cmp if *str in call of ft_strlen is not null
	je end			; if comparison true thend ret rax that is set to 0 in end

while:	
	cmp byte [rdi], 0	; cmp *str to 0, byte is to precise the size cmp  
	je  end				; if last char of *str is 0 then ret 
	inc rax				; otherwise inc ret value
	inc rdi				; and inc *str
	jmp while			; loop until cmp is true

end:
	ret					; ret value of rax
