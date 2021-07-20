# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mtak <mtak@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/07/19 19:09:29 by mtak              #+#    #+#              #
#    Updated: 2021/07/20 21:29:41 by mtak             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS		=	main.c init.c check.c utils.c

OBJS		= 	$(SRCS:.c=.o)

CC			=	gcc

FLAG		= 	-Wall -Wextra -Werror

INCLUDES	= 	-I./

NAME		=	philo

.c.o		:
			$(CC) $(FLAG) -c $< -o $(<:.c=.o) $(INCLUDES)

all			: $(NAME)

$(NAME)		: $(OBJS)
		$(CC) $(FLAG) $(OBJS) -o $(NAME) $(INCLUDES)

clean		:
		rm -rf $(OBJS)

fclean		: clean
		rm -rf $(NAME)

re			: fclean all

.PHONY 		: all clean fclean re