# Makefile da raiz do repositorio.
#
# Cada projeto fica em seu proprio diretorio com seu Makefile. Este aqui apenas
# repassa o alvo pedido para o projeto ativo, para dar `make run` da raiz.
#
#   make          -> compila
#   make run      -> compila e executa
#   make debug    -> compila com simbolos de debug (-g -O0)
#   make clean    -> limpa os arquivos gerados

PROJECT := learnPointers

.PHONY: all run debug clean

all run debug clean:
	$(MAKE) -C $(PROJECT) $@
