FC = gfortran
FFLAGS = -Wall -O2

TARGET = bin/main
SRC = main.f95

all: $(TARGET)
$(TARGET): $(SRC)
	$(FC) $(FFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET) *.exe
	
run: $(TARGET)
	./$(TARGET)
