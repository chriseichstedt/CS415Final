# source `modules.sh` before attempting to build or run.

CXX = g++

# upcxx-meta PPFLAGS are really CFLAGS to be used during compilation
# upcxx-meta LDFLAGS are really CFLAGS to be used during linking
# upcxx-meta LIBFLAGS are really a combination of LDLIBS and LDFLAGS

CXXFLAGS = `upcxx-meta PPFLAGS` `upcxx-meta LDFLAGS`
LDFLAGS = `upcxx-meta LIBFLAGS`

TARGETS = serial_matmul upcxx_test upcxx_matmul

all:	$(TARGETS)

matmul: serial_matmul.cpp
	$(CXX) serial_matmul.cpp -o serial_matmul $(CXXFLAGS) $(LDFLAGS)
	
upcxx_test: upcxx_test.cpp
	$(CXX) upcxx_test.cpp -o upcxx_test $(CXXFLAGS) $(LDFLAGS)
	
upcxx_matmul: upcxx_matmul.cpp
	$(CXX) upcxx_matmul.cpp -o upcxx_matmul $(CXXFLAGS) $(LDFLAGS)

clean:
	rm -f $(targets) $(objects) *.stdout *.o ; rm -fv serial_matmul ; rm -fv upcxx_test ; rm -fv upcxx_matmul