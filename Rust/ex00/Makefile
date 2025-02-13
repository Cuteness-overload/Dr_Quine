NAME = Colleen

CC = rustc

#############################################

all: $(NAME)

$(NAME): $(NAME).rs
	$(CC) $(NAME).rs

clean:
	rm -f test_*

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME) > test_$(NAME)
	diff -s $(NAME).rs test_$(NAME)