# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstoops <mstoops@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/01 14:10:33 by mstoops           #+#    #+#              #
#    Updated: 2020/05/02 18:30:23 by mstoops          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Werror -Wextra
SRC = ft_isprint.c\
	ft_tolower.c\
	ft_toupper.c\
	ft_isdigit.c\
	ft_isascii.c\
	ft_isalpha.c\
	ft_isalnum.c\
	ft_atoi.c\
	ft_memset.c\
	ft_bzero.c\
	ft_memcpy.c\
	ft_memccpy.c

all: $(NAME)

$(NAME):
	gcc $(FLAGS) -c $(SRC)
	ar rcs $(NAME) *.o

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

so:
	gcc *.c -c -fpic
	gcc *.o -shared -o libft.so

re: fclean all
