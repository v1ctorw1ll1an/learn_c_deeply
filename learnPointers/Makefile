# Makefile do projeto learnPointers
#
# Alvos principais:
#   make          -> compila o programa
#   make run      -> compila (se preciso) e executa
#   make debug    -> compila com simbolos de debug (-g -O0) para usar com gdb
#   make clean    -> remove os arquivos gerados

CC      := gcc
BIN_DIR := build
BIN     := $(BIN_DIR)/learnPointers

SRCS := $(wildcard *.c)
OBJS := $(patsubst %.c,$(BIN_DIR)/%.o,$(SRCS))
DEPS := $(OBJS:.o=.d)

# -I. faz os includes do tipo "libs/xxx.h" funcionarem.
CFLAGS := -std=gnu11 -I. -Wall -MMD -MP

.PHONY: all run debug clean

all: $(BIN)

$(BIN): $(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(BIN_DIR)/%.o: %.c | $(BIN_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

run: $(BIN)
	./$(BIN)

debug: CFLAGS += -g -O0
debug: clean $(BIN)

clean:
	rm -rf $(BIN_DIR)

-include $(DEPS)
