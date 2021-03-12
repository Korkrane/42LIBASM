# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/26 22:12:28 by bahaas            #+#    #+#              #
#    Updated: 2021/03/12 15:34:00 by bahaas           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libasm.a
SRCS	= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s ft_strdup.s
NASM	= nasm
NFLAGS	= -f elf64
OBJS	= ${SRCS:.s=.o}
RM		= rm -f
CC		= gcc

.s.o:
		${NASM} ${NFLAGS}  -s $< -o $@

$(NAME):	${OBJS}
			ar rc ${NAME} ${OBJS}

all:		${NAME}

main:
			${CC} main.c ${NAME} && ./a.out

clean:
			${RM} ${OBJS}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

.PHONY: all clean fclean re main
