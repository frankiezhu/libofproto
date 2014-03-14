CXX   := g++
LD    := g++
TOP_DIR = ..
LIB_DIR = $(TOP_DIR)/build/lib
OUT_DIR = $(TOP_DIR)/build/bin
CONF_DIR = $(TOP_DIR)/build/conf
INC = -I ../lib -I ../include -I ..
LDFLAGS +=  -std=gnu++0x -L .. -lofp -lpthread -lssl -lrt -lm
CFLAGS += -Wall -g -O0 $(INC)
CXXFLAGS += $(CFLAGS) -std=gnu++0x

SRCS=$(wildcard *.cc)
OBJS=$(patsubst %.cc, %.o, $(SRCS))

TARGET=test

$(OBJ):$(OBJS) 
	$(CXX) $(CXXFLAGS) $^ -o $@

$(TARGET):$(OBJS)
	$(CXX) $^ $(LDFLAGS) -o $@
 
all:$(TARGET)

clean:
	rm -f ./*.o $(TARGET)

.PHONY:clean
