# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kaokazak <kaokazak@student.42tokyo.jp>     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/04/29 13:30:19 by kaokazak          #+#    #+#              #
#    Updated: 2024/08/19 05:29:28 by kaokazak         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar rcs
RM = rm -f

LIBFT_DIR = libft
LIBFT = libft.a

SRCS =  ft_printf.c \
		ft_put_cs.c \
		ft_put_di.c \
		ft_put_p.c \
		ft_put_u.c \
		ft_put_x.c

OBJS = $(SRCS:.c=.o)

all: $(NAME)

$(NAME): $(LIBFT_DIR) $(OBJS)
	make -C ./$(LIBFT_DIR)
	cp ./$(LIBFT_DIR)/$(LIBFT) $(NAME)
	ar rcs $(NAME) $(OBJS)
	
.c.o:
	$(CC) $(CFLAGS) -c $< -o $@
	
clean:
	make fclean -C ./$(LIBFT_DIR)
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: clean fclean re
