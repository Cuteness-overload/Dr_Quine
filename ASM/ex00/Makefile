NAME = Colleen

ASM = nasm -f elf64
CC = gcc -nostartfiles -lc

#############################################

all: $(NAME)

$(NAME): $(NAME).s
	$(ASM) $^ -o $(NAME).o
	$(CC) $(NAME).o -o $(NAME)

clean:
	rm -f Colleen.o

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME) > test_$(NAME)
	diff -s $(NAME).c test_$(NAME)