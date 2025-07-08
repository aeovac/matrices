FC = gfortran
FFLAGS = -Wall -O2

TARGET = bin/main
SRC = lib/matrix.f95 main.f95

all: $(TARGET)
$(TARGET): $(SRC)
	$(FC) $(FFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET) *.exe
	
run: $(TARGET)
	./$(TARGET)
