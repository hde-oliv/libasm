SRC		:=	ft_write.s ft_strlen.s ft_strcpy.s ft_strcmp.s ft_strdup.s

INC_DIR :=	includes
SRC_DIR :=	srcs
OBJ_DIR :=	objs

INCLS   :=	$(INC_DIR)
SRCS	:=	$(addprefix $(SRC_DIR)/,$(SRC))
OBJS    :=	$(SRCS:$(SRC_DIR)/%.s=$(OBJ_DIR)/%.o)

NAME	:=	libasm.a
RLIB    :=	ranlib
CC		:=	gcc
NASM	:=	nasm
LIB		:=	ar rcs

LFLAGS  +=	-I.
RM		:=	rm -rf


all:		obj $(NAME)

$(OBJ_DIR)/%.o:	$(SRC_DIR)/%.s
			$(NASM) -f elf64 -g $< -o $@

$(NAME):	$(OBJS)
			$(LIB) $(NAME) $(OBJS)
			$(RLIB) $(NAME)

obj:
			@mkdir -p $(OBJ_DIR)

clean:
			$(RM) $(OBJS) $(OBJ_DIR)
			$(RM) tests.out

fclean: 	clean
			$(RM) $(NAME)

re: 		fclean all

test:		all
			$(CC) $(LFLAGS)/$(INCLS) main.c $(NAME) -o tests.out
			./tests.out

.PHONY: 	all clean fclean re obj
