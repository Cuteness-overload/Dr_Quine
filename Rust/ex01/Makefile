NAME = Grace
KID = Grace_kid

CC = rustc

#############################################

all: $(NAME)

$(NAME): $(NAME).rs
	$(CC) $(NAME).rs

clean:
	rm -f Grace_kid.rs

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME)
	diff -s $(NAME).rs $(KID).rs