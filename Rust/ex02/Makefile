NAME = Sully

CC = rustc

#############################################

all: $(NAME)

$(NAME): $(NAME).rs
	$(CC) $(NAME).rs

clean:
	rm -f Sully_*

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	clear
	./$(NAME)
	@echo "\ndiff of $(NAME).rs $(NAME)_5.rs"
	@-diff -s $(NAME).rs $(NAME)_5.rs 2>/dev/null || true
	@echo "\ndiff of $(NAME).rs $(NAME)_4.rs"
	@-diff -s $(NAME).rs $(NAME)_4.rs 2>/dev/null || true
	@echo "\ndiff of $(NAME).rs $(NAME)_3.rs"
	@-diff -s $(NAME).rs $(NAME)_3.rs 2>/dev/null || true
	@echo "\ndiff of $(NAME).rs $(NAME)_2.rs"
	@-diff -s $(NAME).rs $(NAME)_2.rs 2>/dev/null || true
	@echo "\ndiff of $(NAME).rs $(NAME)_1.rs"
	@-diff -s $(NAME).rs $(NAME)_1.rs 2>/dev/null || true
	@echo "\ndiff of $(NAME).rs $(NAME)_0.rs"
	@-diff -s $(NAME).rs $(NAME)_0.rs 2>/dev/null || true