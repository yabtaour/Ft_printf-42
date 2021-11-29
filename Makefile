# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: yabtaour <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/11/20 16:51:50 by yabtaour          #+#    #+#              #
#    Updated: 2021/11/26 17:58:28 by yabtaour         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c ft_putchar.c ft_putstr.c ft_putnbr.c ft_putnbr_u.c\
	  ft_strlen.c ft_strrev.c ft_to_hex_up.c ft_to_hex_low.c ft_calloc.c\
	  ft_to_hex_pointer.c

OBJS = ${SRC:.c=.o}

CC = gcc

FLAGS = -Wall -Werror -Wextra

%.o: %.c
	$(CC) $(FLAGS) -o $@ -c $<

$(NAME): $(OBJS) ft_printf.h
	ar rcs	$(NAME)		$(OBJS)

all: ${NAME}

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf ${NAME}

re:		fclean all
