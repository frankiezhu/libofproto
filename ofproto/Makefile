CC    := gcc
LD     := gcc
TOP_DIR = ..
LIB_DIR = $(TOP_DIR)/build/lib
OUT_DIR = $(TOP_DIR)/build/bin
CONF_DIR = $(TOP_DIR)/build/conf

INC =  -I ../lib -I ../include -I ../
LDFLAGS += 
CFLAGS += -Wall -g -O0 $(INC)

SRCS=$(wildcard *.c)
OBJS=$(patsubst %.c, %.o, $(SRCS))

all:$(OBJS)
$(OBJ):$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

all:$(TARGET)

clean:
	rm -f *.o $(TARGET)

.PHONY:clean
