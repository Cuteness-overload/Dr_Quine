NAME = Colleen

CC = clang
CFLAGS = -Wall -Wextra -Werror

#############################################

all: $(NAME)

$(NAME): $(NAME).c
	$(CC) $(CFLAGS) -o $(NAME) $(NAME).c

clean:
	rm -f test_*

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME) > test_$(NAME)
	diff $(NAME).c test_$(NAME)