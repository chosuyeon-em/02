TARGET = program
SRCS = hello.c
OBJS = $(SRCS:.c=.o)
CC = gcc
CFLAGS = -g -Wall

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET)

%.O: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJS) $(TARGET)