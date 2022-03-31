NAME		=	bin/meetup

RM		=	rm -f

CC		=	gcc #-I includes

CFLAGS		=	-W -Wall -Werror -ansi -pedantic -I includes

CLIB		=	-lmy -L ./lib -lm

SRCS		=	src/main.c \

OBJS		=	$(SRCS:.c=.o)

ECHO		=	echo -e

all		:	$(NAME)

$(NAME)		:	$(OBJS)

			make re clean -C lib/
			$(CC) $(CFLAGS) $(OBJS) -o $(NAME) $(CLIB)
			@$(ECHO) '\033[0;32m> Compiled\033[0m'

clean		:

			$(RM) $(OBJS)
			@$(ECHO) '\033[0;35m> Directory cleaned\033[0m'

fclean		:	$(clean)
			$(RM) $(NAME)

re		:	fclean all

.PHONY		:	all clean fclean re
