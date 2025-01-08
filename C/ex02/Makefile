NAME = Sully

CC = clang
CFLAGS = -Wall -Wextra -Werror

#############################################

all: $(NAME)

$(NAME): $(NAME).c
	$(CC) $(CFLAGS) -o $(NAME) $(NAME).c

clean:
	rm -f Sully_*

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	clear
	./$(NAME)
	@echo "\ndiff of $(NAME).c $(NAME)_5.c"
	@-diff -s $(NAME).c $(NAME)_5.c 2>/dev/null || true
	@echo "\ndiff of $(NAME).c $(NAME)_4.c"
	@-diff -s $(NAME).c $(NAME)_4.c 2>/dev/null || true
	@echo "\ndiff of $(NAME).c $(NAME)_3.c"
	@-diff -s $(NAME).c $(NAME)_3.c 2>/dev/null || true
	@echo "\ndiff of $(NAME).c $(NAME)_2.c"
	@-diff -s $(NAME).c $(NAME)_2.c 2>/dev/null || true
	@echo "\ndiff of $(NAME).c $(NAME)_1.c"
	@-diff -s $(NAME).c $(NAME)_1.c 2>/dev/null || true
	@echo "\ndiff of $(NAME).c $(NAME)_0.c"
	@-diff -s $(NAME).c $(NAME)_0.c 2>/dev/null || true