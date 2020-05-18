# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mstoops <mstoops@student.21-school.ru>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/01 14:10:33 by mstoops           #+#    #+#              #
#    Updated: 2020/05/18 21:03:12 by mstoops          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
FLAGS = -Wall -Werror -Wextra
FOLDER = src
SRC = src/ft_isprint.c\
	src/ft_tolower.c\
	src/ft_toupper.c\
	src/ft_isdigit.c\
	src/ft_isascii.c\
	src/ft_isalpha.c\
	src/ft_isalnum.c\
	src/ft_atoi.c\
	src/ft_memset.c\
	src/ft_bzero.c\
	src/ft_memcpy.c\
	src/ft_memccpy.c\
	src/ft_memmove.c\
	src/ft_memchr.c\
	src/ft_memcmp.c\
	src/ft_strlen.c\
	src/ft_strlcpy.c\
	src/ft_strlcat.c\
	src/ft_strchr.c\
	src/ft_strrchr.c\
	src/ft_strncmp.c\
	src/ft_strnstr.c\
	src/ft_calloc.c\
	src/ft_strdup.c\
	src/ft_strjoin.c\
	src/ft_strtrim.c\
	src/ft_substr.c\
	src/ft_split.c\
	src/ft_itoa.c\
	src/ft_strmapi.c\
	src/ft_putchar_fd.c\
	src/ft_putstr_fd.c\
	src/ft_putendl_fd.c\
	src/ft_putnbr_fd.c\

BNS = src/ft_lstnew.c\
	src/ft_lstadd_front.c\
	src/ft_lstsize.c\
	src/ft_lstlast.c\
	src/ft_lstadd_back.c\
	src/ft_lstdelone.c\
	src/ft_lstclear.c\
	src/ft_lstiter.c\
	src/ft_lstmap.c

OBJECTS = $(patsubst %.c,%.o,$(SRC))
BNS_OBJECTS = $(patsubst %.c,%.o,$(BNS))
HEADERS = src/libft.h

all: $(NAME)

$(NAME): $(OBJECTS)
	ar r $(NAME) $(OBJECTS)
	ranlib $(NAME)

%.o: %.c $(HEADERS)
	gcc $(FLAGS) -c $< -o $@

bonus: $(BNS_OBJECTS)
	ar r $(NAME) $(BNS_OBJECTS)
	ranlib $(NAME)

clean:
	rm -f $(OBJECTS) $(BNS_OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all
