# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bnaib <bnaib@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/15 18:49:22 by bnaib             #+#    #+#              #
#    Updated: 2021/05/15 21:17:26 by bnaib            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

ifeq ($(HOSTTYPE),)
	HOSTTYPE := $(shell uname -m)_$(shell uname -s)
endif

NAME = libft_malloc_$(HOSTTYPE).so
LINK_NAME = libft_malloc.so

FLAGS = -g
FLAGS1 = -Wall -Wextra -Werror

INC_DIR = ./inc/
SRC_DIR = ./src/
OBJ_DIR = ./obj/

INC_F =\
	libft_malloc.h

SRC_F =\
	libft_malloc.c\
	show_alloc_mem.c

OBJ_F = $(patsubst %.c, %.o, $(SRC_F))

INC = $(addprefix $(INC_DIR), $(INC_F))
SRC = $(addprefix $(SRC_DIR), $(SRC_F))
OBJ = $(addprefix $(OBJ_DIR), $(OBJ_F))

HEADERS =\
	-I ./inc

all: $(NAME)

$(NAME): $(OBJ_DIR) $(OBJ)
	gcc -shared $(FLAGS) -o $(NAME) $(OBJ) $(HEADERS)
	ln -s -f $(NAME) $(LINK_NAME)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR);

$(OBJ_DIR)%.o: $(SRC_DIR)%.c $(INC)
	gcc -fPIC $(FLAGS) -o $@ -c $< $(HEADERS)

clean:
	rm -rf $(OBJ_DIR) $(LINK_NAME)

fclean: clean
	rm -f $(LINK_NAME)
	rm -f $(NAME)

re: fclean all

test:
	gcc ./test.c -L./ -lft_malloc -Wl,-rpath,./
	./a.out
# gcc -c -fPIC source/*.c
# gcc -shared -o libmy.so *.o

# gcc -o project *.o \
# > -L../library -lmy2 -Wl,-rpath,../library/