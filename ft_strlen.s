# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/26 23:02:26 by bahaas            #+#    #+#              #
#    Updated: 2020/11/26 23:48:11 by bahaas           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.data

len:
	.byte 0

.text

.global _start

_start:

xor rax, rax
jmp	while;

_while:
	cmp [rdi], byte 0	;
	je end;				// goes to _end IF last cmp is true
	inc len;			// increment var
	jmp while;			// goes to _while function

_end:
	ret $len;
