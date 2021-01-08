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

	section .txt
	global	ft_strcpy

ft_strcpy:
	mov rax, 0		;	initialize rag register to 0. rax = return value
	lea rdi, [rsi]	;	load the address of source to dest register

end:
	mov rax, rdi	;	put content of dest to rax (content of src due to lea)
	ret				;	ret value of rax
