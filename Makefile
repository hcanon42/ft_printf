# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hcanon <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/07/17 00:56:42 by hcanon            #+#    #+#              #
#    Updated: 2019/10/20 14:46:25 by hcanon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

OBJS	= ${SRCS:.c=.o}
BONUS	= ${BONUS_S:.c=.o}
ADD		= ${ADD_S:.c=.o}
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror -c -I ${HEADER}
NAME	= libftprintf.a
HEADER	= ./
SRCS	= ft_atoi.c					\
		  ft_bzero.c				\
		  ft_calloc.c				\
		  ft_isalnum.c				\
		  ft_isalpha.c				\
		  ft_isascii.c				\
		  ft_isdigit.c				\
		  ft_isprint.c				\
		  ft_itoa.c					\
		  ft_memccpy.c				\
		  ft_memchr.c				\
		  ft_memcmp.c				\
		  ft_memcpy.c				\
		  ft_memmove.c				\
		  ft_memset.c				\
		  ft_putchar_fd.c			\
		  ft_putendl_fd.c			\
		  ft_putnbr_fd.c			\
		  ft_putstr_fd.c			\
		  ft_split.c				\
		  ft_strchr.c				\
		  ft_strdup.c				\
		  ft_strjoin.c				\
		  ft_strlcat.c				\
		  ft_strlcpy.c				\
		  ft_strlen.c				\
		  ft_strmapi.c				\
		  ft_strncmp.c				\
		  ft_strnstr.c				\
		  ft_strrchr.c				\
		  ft_strtrim.c				\
		  ft_strcat					\
		  ft_substr.c				\
		  ft_tolower.c				\
		  ft_toupper.c

BONUS_S	= ft_lstadd_back_bonus.c	\
		  ft_lstadd_front_bonus.c	\
		  ft_lstclear_bonus.c		\
		  ft_lstdelone_bonus.c		\
		  ft_lstiter_bonus.c		\
		  ft_lstlast_bonus.c		\
		  ft_lstmap_bonus.c			\
		  ft_lstnew_bonus.c			\
		  ft_lstsize_bonus.c

ADD_S	= ft_putchar.c				\
		  ft_putnbr.c				\
		  ft_putstr.c				\
		  ft_strcmp.c				\
		  ft_swap.c					\
		  ft_sort_string_tab.c		\
		  ft_ltoa.c					\
		  ft_in_str.c				\
		  ft_printf/affichage.c		\
		  ft_printf/ft_printf.c		\
		  ft_hexa.c					\
		  ft_printf/ft_printf_tools.c

$(NAME):	${OBJS} ${BONUS} ${ADD}
			ar rcs ${NAME} ${BONUS} ${OBJS} ${ADD}

all:		$(NAME)

bonus:		$(NAME)

clean:
			rm -f ${OBJS} ${BONUS} ${ADD}

fclean:		clean
			rm -f ${NAME}

re:			fclean ${NAME}

.PHONY:		all clean fclean re add bonus
