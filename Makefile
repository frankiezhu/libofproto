CC    := gcc
LD    := gcc
TOP_DIR = ..
LIB_DIR = $(TOP_DIR)/build/lib
OUT_DIR = $(TOP_DIR)/build/bin
CONF_DIR = $(TOP_DIR)/build/conf
AR = ar
ARFLAGS = cru
INC = -I ./lib -I ./include -I .
LDFLAGS += -lpthread -lssl -lrt -lm
CFLAGS += -Wall -g -O0 $(INC) -fPIC

SRCS=$(wildcard lib/*.c)
SRCS+=$(wildcard ofproto/*.c)
OBJS=$(patsubst %.c, %.o, $(SRCS))

TARGET=libofp.a

$(OBJ):$(OBJS)
	$(CC) $(CFLAGS) $^ -o $@

$(TARGET):$(OBJS)
	$(AR) $(ARFLAGS) $@ $^
	cp $@ ../ -f

all:$(TARGET)

clean:
	rm -f lib/*.o ofproto/*.o  ./*.o $(TARGET)

.PHONY:clean
