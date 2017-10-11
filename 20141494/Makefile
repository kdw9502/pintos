CC=gcc

TARGET = testlib
OBJECTS = list.o hash.o bitmap.o testlib.o
all: $(TARGET)

$(TARGET): $(OBJECTS) 
	$(CC) -g -o $@ $^

clean:
	rm -rf $(OBJECTS) $(TARGET)
