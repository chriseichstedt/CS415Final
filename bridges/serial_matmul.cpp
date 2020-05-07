#include <iostream>
#include <time.h>
#include <cstdlib>
#include <stdio.h>
#include <upcxx/upcxx.hpp>
#include <vector>

long int matrix_size; //matrix size n
int n_size; //n processor size
clock_t t;

int* create_matrix()
{
	srand(time(NULL));

// 	int matrix_size = (rand() % 10) + 1;
	int* to_return = (int*)malloc(matrix_size * matrix_size * sizeof(int));

	for (int i = 0; i < matrix_size * matrix_size; i++)
	{
		to_return[i] = rand() % 100;
	}

	return to_return;
}



void serial_matmul() {
    int* aMatrix = create_matrix();
    int* bMatrix = create_matrix();
    int* product = (int*)malloc(matrix_size*matrix_size*sizeof(int));

/**
column major example:

double cij = C[i+j*n];
cij += A[i+k*n] * B[k+j*n];
C[i+j*n] = cij;

row major example:

double cij = C[i*n+j];
cij += A[i*n+k] * B[k*n+j];
C[i*n+j] = cij;
**/
    t = clock(); //start timer
    for (int row = 0; row < matrix_size; row++) {
        for (int col = 0; col < matrix_size; col++) {
            // Multiply the row of A by the column of B to get the row, column of product.
            for (int inner = 0; inner < matrix_size; inner++) {
                product[row*matrix_size+col] += aMatrix[row*matrix_size+inner] * bMatrix[inner*matrix_size+col];
            }
            std::cout << product[row*matrix_size+col] << "  ";
        }
        std::cout << "\n";
    }
    t = clock() - t; //end timer
}



int main(int argc, char* argv[]) {
    matrix_size = atoi(argv[1]);
    serial_matmul();
    printf ("It took me %d clicks (%f seconds).\n",t,((float)t)/CLOCKS_PER_SEC);
    return 0;
}