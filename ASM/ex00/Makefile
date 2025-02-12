NAME = Colleen

CC = gcc 


#############################################

all: $(NAME)

$(NAME): $(NAME).s
	nasm -f elf64 $(NAME).s
	gcc -lc -no-pie -o $(NAME) $(NAME).o

clean:
	rm -f Colleen.o

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME) > test_$(NAME)
	diff -s $(NAME).s test_$(NAME)