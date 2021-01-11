/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: bahaas <bahaas@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/11/26 22:15:01 by bahaas            #+#    #+#             */
/*   Updated: 2021/01/11 11:15:53 by bahaas           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <fcntl.h>

void	strlen_checker(void)
{
	char *str1 = "Hello World !";
	char *str2 = "You are testing libasm project.";
	char *str3 = "Is there any difference ?";

	printf("\033[1;34m*** STRLEN CHECK ***\n\033[0m");
	printf("\033[0;33mInitial value : %s\n\033[0m", str1);
	printf("strlen        : %lu\n", strlen(str1));
	printf("ft_strlen.s   : %lu\n\n", ft_strlen(str1));
	printf("\033[0;33mInitial value : %s\n\033[0m", str2);
	printf("strlen        : %lu\n", strlen(str2));
	printf("ft_strlen.s   : %lu\n\n", ft_strlen(str2));
	printf("\033[0;33mInitial value : %s\n\033[0m", str3);
	printf("strlen        : %lu\n", strlen(str3));
	printf("ft_strlen.s   : %lu\n\n", ft_strlen(str3));
}

void	strcpy_checker(void)
{
	char dest1[] = "Hello World !";
	char ft_dest1[] = "Hello World !";
	char dest2[] = "You are testing libasm project";
	char ft_dest2[] = "You are testing libasm project";
	char dest3[] = "Is there any difference ?";
	char ft_dest3[] = "Is there any difference ?";

	char src1[] = "Goodbye World !";
	char ft_src1[] = "Goodbye World !";
	char src2[] = "It seems to work.";
	char ft_src2[] = "It seems to work.";
	char src3[] = "Probably...";
	char ft_src3[] = "Probably...";

	printf("\033[1;34m*** STRCPY CHECK ***\n\033[0m");
	printf("\033[0;33mInitial dest : %s\n", dest1);
	printf("Initial src  : %s\n\033[0m", src1);
	printf("strcpy       : %s\n", strcpy(dest1, src1));
	printf("ft_strcpy.s  : %s\n\n", ft_strcpy(ft_dest1, ft_src1));
	
	printf("\033[0;33mInitial dest : %s\n", dest2);
	printf("Initial src  : %s\n\033[0m", src2);
	printf("strcpy       : %s\n", strcpy(dest2, src2));
	printf("ft_strcpy.s  : %s\n\n", ft_strcpy(ft_dest2, ft_src2));
	

	printf("\033[0;33mInitial dest : %s\n", dest3);
	printf("Initial src  : %s\n\033[0m", src3);
	printf("strcpy       : %s\n", strcpy(dest3, src3));
	printf("ft_strcpy.s  : %s\n\n", ft_strcpy(ft_dest3, ft_src3));
}

void	strcmp_checker(void)
{
	char *str1 = "Hello World !";
	char *str2 = "You are testing libasm project.";
	char *str3 = "Is there any difference ?";

	char *s1 = "Hello World !";						// ==
	char *s2 = "You are testing libbsm project.";	// +
	char *s3 = "Is thare any difference ?";			// -

	printf("\033[1;34m*** STRCMP CHECK ***\n\033[0m");
	printf("\033[0;33mInitial s1   : %s\n", str1);
	printf("Initial s2   : %s\n\033[0m", s1);
	printf("strcmp       : %d\n", strcmp(str1, s1));
	printf("ft_strcmp.s  : %d\n\n", ft_strcmp(str1, s1));

	printf("\033[0;33mInitial s1   : %s\n", str2);
	printf("Initial s2   : %s\n\033[0m", s2);
	printf("strcmp       : %d\n", strcmp(str2, s2));
	printf("ft_strcmp.s  : %d\n\n", ft_strcmp(str2, s2));

	printf("\033[0;33mInitial s1   : %s\n", str3);
	printf("Initial s2   : %s\n\033[0m", s3);
	printf("strcmp       : %d\n", strcmp(str3, s3));
	printf("ft_strcmp.s  : %d\n\n", ft_strcmp(str3, s3));
}

void	write_checker(void)
{
	char *str1 = "Hello World !";
	char *str2 = "You are testing libasm project";
	char *str3 = "Is there any difference ?";
	char *str4 = NULL;

	printf("\033[1;34m*** WRITE CHECK ***\n\033[0m");
	printf("\033[0;33mInitial value : %s & fd : 42\n\033[0m", str1);
	printf("display : ");
	fflush(stdout);
	printf(" || write value      : %ld\n", write(42, str1, 13));
	printf("display : ");
	fflush(stdout);
	printf(" || ft_write.s value : %ld\n\n", ft_write(42, str1, 13));
	
	printf("\033[0;33mInitial value : %s & fd : 1\n\033[0m", str2);
	printf("display : ");
	fflush(stdout);
	printf(" || write value      : %ld\n", write(1, str2, 15));
	printf("display : ");
	fflush(stdout);
	printf(" || ft_write.s value : %ld\n\n", ft_write(1, str2, 15));
	
	printf("\033[0;33mInitial value : %s & count 0\n\033[0m", str3);
	printf("display : ");
	fflush(stdout);
	printf(" || write value      : %ld\n", write(1, str3, 0));
	printf("display : ");
	fflush(stdout);
	printf(" || ft_write.s value : %ld\n\n", ft_write(1, str3, 0));
	
	printf("\033[0;33mInitial value : %s & fd : -1\n\033[0m", str1);
	printf("display : ");
	fflush(stdout);
	printf(" || write value        : %ld\n", write(-1, str1, 13));
	printf("errno write value      : %d\n", errno);
	printf("display : ");
	fflush(stdout);
	printf(" || ft_write.s value   : %ld\n", ft_write(-1, str1, 13));
	printf("errno ft_write.s value : %d\n\n", errno);

	printf("\033[0;33mInitial value : %s & fd : 1\n\033[0m", str4);
	printf("display : ");
	fflush(stdout);
	printf(" || write value        : %ld\n", write(1, str4, 13));
	printf("errno write value      : %d\n", errno);
	printf("display : ");
	fflush(stdout);
	printf(" || ft_write.s value   : %ld\n", ft_write(1, str4, 13));
	printf("errno ft_write.s value : %d\n\n", errno);
}

void	read_checker(void)
{
	int fd1;
	int fd2;
	char buff1[50];
	char buff2[50] = "test on bad fd :(";
	int ret;

	fd1 = open("test.txt", O_RDONLY);
	fd2 = open("test.txt", O_RDONLY);
	errno = 0;

	printf("\033[1;34m***  READ CHECK ***\n\033[0m");
	printf("\033[0;33mread on stdin (write some txt) : \033[0m");
	fflush(stdout);
	printf("read value   : %d\n", ret = read(1, buff1, 100));
	buff1[ret] = 0;
	printf("read display : %s\n", buff1);
	printf("\033[0;33mft_read.s on stdin (write some txt) : \033[0m");
	fflush(stdout);
	printf("ft_read.s value   : %d\n", ret = ft_read(1, buff1, 100));
	buff1[ret] = 0;
	printf("ft_read.s display : %s\n", buff1);

	printf("\033[0;33mread a file  : \n\033[0m");
	fflush(stdout);
	printf("read value   : %d\n", ret = read(fd1, buff1, 100));
	buff1[ret] = 0;
	printf("read display : %s", buff1);
	printf("read errno   : %d\n\n", errno);
	close(fd1);
	printf("\033[0;33mft_read.s a file  :\n\033[0m");
	fflush(stdout);
	printf("ft_read.s value   : %d\n", ret = ft_read(fd2, buff1, 100));
	buff1[ret] = 0;
	printf("ft_read.s display : %s", buff1);
	printf("ft_read.s errno   : %d\n\n", errno);
	close(fd2);

	printf("\033[0;33mread bad fd  : \n\033[0m");
	fflush(stdout);
	printf("read value   : %d\n", ret = read(-1, buff2, 100));
	buff2[ret] = 0;
	printf("read display : %s\n", buff2);
	printf("read errno   : %d\n\n", errno);
	printf("\033[0;33mft_read.s bad fd  :\n\033[0m");
	fflush(stdout);
	printf("ft_read.s value   : %d\n", ret = ft_read(-1, buff2, 100));
	buff2[ret] = 0;
	printf("ft_read.s display : %s\n", buff2);
	printf("ft_read.s errno   : %d\n\n", errno);
}

void	strdup_checker(void)
{
	char *str1 = "Hello World !";
	char *str2 = "You are testing libasm project.";
	char *str3 = "Is there any difference ?";

	printf("\033[1;34m*** STRDUP CHECK ***\n\033[0m");
	printf("\033[0;33mInitial str1 : %s\n\033[0m", str1);
	printf("strdup       : %s\n", strdup(str1));
	printf("ft_strdup.s  : %s\n\n", ft_strdup(str1));

	printf("\033[0;33mInitial str2 : %s\n\033[0m", str2);
	printf("strdup       : %s\n", strdup(str2));
	printf("ft_strdup.s  : %s\n\n", ft_strdup(str2));
	
	printf("\033[0;33mInitial str3 : %s\n\033[0m", str3);
	printf("strdup       : %s\n", strdup(str3));
	printf("ft_strdup.s  : %s\n", ft_strdup(str3));
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
