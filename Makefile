# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: oait-bad <oait-bad@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/25 14:42:31 by oait-bad          #+#    #+#              #
#    Updated: 2022/11/09 00:21:05 by oait-bad         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Wextra -Werror

SRCS = ft_strchr.c ft_strlen.c ft_putchar_fd.c \
      ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
      ft_strlcpy.c ft_strlcat.c ft_strdup.c ft_memset.c \
      ft_bzero.c ft_memcmp.c ft_memcpy.c ft_memmove.c \
      ft_isascii.c ft_isdigit.c ft_isalpha.c ft_isalnum.c \
      ft_isprint.c ft_toupper.c ft_tolower.c ft_atoi.c \
      ft_calloc.c ft_strjoin.c ft_strnstr.c ft_memchr.c \
      ft_strncmp.c ft_substr.c ft_itoa.c ft_split.c \
      ft_strtrim.c ft_strrchr.c ft_strmapi.c ft_striteri.c
OBJ = $(SRCS:.c=.o)

all : $(NAME)

$(NAME) : $(OBJ)
	ar rc ${NAME} $(OBJ)

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re 