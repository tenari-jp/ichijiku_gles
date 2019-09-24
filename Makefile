INCLUDE = -I /opt/vc/include
LD_FLAGS = -lbcm_host -legl -lgl2
LD_FLAGS += -L/opt/vc/lib

OBJDIR = ./obj

default: src/*
	gcc -o test src/* $(INCLUDE) $(LD_FLAGS)
