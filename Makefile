# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstoops <mstoops@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/01 14:10:33 by mstoops           #+#    #+#              #
#    Updated: 2020/05/04 19:12:31 by mstoops          ###   ########.fr        #
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
	ft_memccpy.c\
	ft_memmove.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_strlen.c\
	ft_strlcpy.c\
	ft_strlcat.c\
	ft_strchr.c\
	ft_strrchr.c\
	ft_strncmp.c\
	ft_strnstr.c\
	ft_calloc.c\
	ft_strdup.c\
	ft_strjoin.c\
	ft_strtrim.c\
	ft_substr.c\
	ft_split.c\
	ft_itoa.c\
	ft_strmapi.c\
	ft_putchar_fd.c\
	ft_putstr_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\

OBJECTS = $(patsubst %.c,%.o,$(SRC))
HEADERS = libft.h

all: $(NAME)

$(NAME): $(OBJECTS)
	ar r $(NAME) $(OBJECTS)
	ranlib $(NAME)

%.o: %.c $(HEADERS)
	gcc $(FLAGS) -c $< -o $@

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
