NAME = Colleen

#############################################

all: $(NAME)

$(NAME): $(NAME).s
	nasm -f elf64 $(NAME).s
	gcc -lc -no-pie -z noexecstack -o $(NAME) $(NAME).o

clean:
	rm -f Colleen.o

fclean: clean
	rm -rf $(NAME)
	rm -rf test_$(NAME)

re: fclean all

test: re
	./$(NAME) > test_$(NAME)
	diff -s $(NAME).s test_$(NAME)
