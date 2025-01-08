NAME = Grace
KID = Grace_kid

CC = clang
CFLAGS = -Wall -Wextra -Werror

#############################################

all: $(NAME)

$(NAME): $(NAME).c
	$(CC) $(CFLAGS) -o $(NAME) $(NAME).c

clean:
	rm -f Grace_kid.c

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME)
	diff -s $(NAME).c $(KID).c