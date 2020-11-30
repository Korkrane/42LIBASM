/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/26 22:15:01 by bahaas            #+#    #+#             */
/*   Updated: 2020/11/26 22:55:26 by bahaas           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

void	strlen_checker(void)
{
	printf("\033[1;34m*** STRLEN CHECK ***\n\033[0m");
	printf("Initial value : Hello World !\n");
	printf("Initial value : You are testsintg libasm project.\n");
	printf("Initial value : Is there any difference ?\n");
}

void	strcpy_checker(void)
{
	printf("\033[1;34m*** STRCPY CHECK ***\n\033[0m");
}

void	strcmp_checker(void)
{
	printf("\033[1;34m*** STRCMP CHECK ***\n\033[0m");
}

void	write_checker(void)
{
	printf("\033[1;34m*** WRITE CHECK ***\n\033[0m");
	printf("Initial value : Hello World !\n");
	printf("Initial value : You are testsintg libasm project.\n");
	printf("Initial value : Is there any difference ?\n");
}

void	read_checker(void)
{
	printf("\033[1;34m***  READ CHECK ***\n\033[0m");
}

void	strdup_checker(void)
{
	printf("\033[1;34m*** STRDUP CHECK ***\n\033[0m");
}

int		main(void)
{
	strlen_checker();
	strcpy_checker();
	strcmp_checker();
	write_checker();
	read_checker();
	strdup_checker();
	return (0);
}
