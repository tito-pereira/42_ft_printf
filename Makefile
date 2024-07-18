# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/07 16:57:08 by tibarbos          #+#    #+#              #
#    Updated: 2024/07/18 16:20:34 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Wextra -Werror
AR = ar -rcs
RM = rm -rf
SRC = ./src/central.c \
      ./src/death_star.c \
      ./src/n_utils_1.c \
	  ./src/n_utils_2.c \
	  ./src/n_utils_3.c \
      ./src/n_specs_1.c \
	  ./src/n_specs_2.c \
	  ./src/n_hex.c \
	  ./src/n_flag.c \
      ./src/pain_exist.c \
	  ./src/pain_size.c \
	  ./src/pain_checks.c \
	  ./src/p_flag.c \
      ./src/ip_specs_1.c \
	  ./src/ip_specs_2.c \
	  ./src/ip_specs_u.c\
      ./src/p_specs_r1.c \
	  ./src/p_specs_r2.c \
	  ./src/p_specs_l1.c \
	  ./src/p_specs_l2.c \
      ./src/ft_itoa.c \
	  ./src/ft_long_itoa.c \
	  ./src/ft_hbx_itoa.c \
	  ./src/ft_hx_itoa.c \
	  ./src/ft_lhx_itoa.c

OBJS = ${SRC:.c=.o}

$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

all: $(NAME)

bonus: $(OBJS)
	$(AR) $(NAME) $(OBJS)

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all
