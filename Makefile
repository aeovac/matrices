FC = gfortran
FFLAGS = -Wall -O2

TARGET = main
SRC = main.f95

all: $(TARGET)
$(TARGET): $(SRC)
	$(FC) $(FFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET) *.o
	
run: $(TARGET)
	./$(TARGET)
