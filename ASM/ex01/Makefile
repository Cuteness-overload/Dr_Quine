NAME = Grace

CC = gcc 


#############################################

all: $(NAME)

$(NAME): $(NAME).s
	nasm -f elf64 $(NAME).s
	gcc -lc -no-pie -z noexecstack -o $(NAME) $(NAME).o

clean:
	rm -f Grace.o

fclean: clean
	rm -rf $(NAME)

re: fclean all

test: re
	./$(NAME)
	diff -s $(NAME).s $(NAME)_kid.s
