NAME = Sully

#############################################

all: $(NAME)

$(NAME): $(NAME).s
	nasm -f elf64 $(NAME).s
	gcc -lc -no-pie -z noexecstack -o $(NAME) $(NAME).o

clean:
	rm -f $(NAME)_*
	rm -f $(NAME).o

fclean: clean
	rm -rf $(NAME)
	rm -f $(NAME).o

re: fclean all

test: re
	./$(NAME)
	@echo "\ndiff of $(NAME).s $(NAME)_4.s"
	@-diff -s $(NAME).s $(NAME)_4.s 2>/dev/null || true
	@echo "\ndiff of $(NAME).s $(NAME)_3.s"
	@-diff -s $(NAME).s $(NAME)_3.s 2>/dev/null || true
	@echo "\ndiff of $(NAME).s $(NAME)_2.s"
	@-diff -s $(NAME).s $(NAME)_2.s 2>/dev/null || true
	@echo "\ndiff of $(NAME).s $(NAME)_1.s"
	@-diff -s $(NAME).s $(NAME)_1.s 2>/dev/null || true
	@echo "\ndiff of $(NAME).s $(NAME)_0.s"
	@-diff -s $(NAME).s $(NAME)_0.s 2>/dev/null || true
	@rm -f $(NAME)_*.o