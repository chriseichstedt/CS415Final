#include <iostream>
#include <upcxx/upcxx.hpp>
#include <cstdlib>
#include <time.h>
#include <stdio.h>

int matrix_size = 1;
int n_ranks = 0;
int matrix_size_per_ranks = 0;
int start_itr = 0;
int end_itr = 0;

void upcxx_matmul();
void find_rank_size();

int main(int argc, char* argv[])
{
    if(argc != 2)
    {
        std::cout << "Incorrect Argument Count (./upcxx_matmul <matrix_size>)" << std::endl;
        return 1;
    }

    upcxx::init();
    
    n_ranks = upcxx::rank_n();
    matrix_size = atoi(argv[1]);
    
    if(upcxx::rank_me() == 0)
    {
        //print out how many ranks and a break line
        std::cout << "Total number of ranks: " << n_ranks << std::endl;
        std::cout << "Matrix size: " << matrix_size << " x " << matrix_size << std::endl;
        std::cout << "----------------------------------" << std::endl;
    }
    
    find_rank_size();
    upcxx_matmul();
    
    //print out a break line for formatting
    std::cout << "----------------------------------" << std::endl;
    
    upcxx::finalize();
    
    return 0;
}

void upcxx_matmul()
{
    srand(time(NULL));
    //set up matrices *** There might be a problem with this logic
    upcxx::global_ptr<int> a  = nullptr;
    upcxx::global_ptr<int> b  = nullptr;
    upcxx::global_ptr<int> c  = nullptr;
    
    if(upcxx::rank_me() == 0)
    {
        a = upcxx::new_array<int>(matrix_size*matrix_size);
        b = upcxx::new_array<int>(matrix_size*matrix_size);
        c = upcxx::new_array<int>(matrix_size*matrix_size);
        
        for(int i=0 ; i<matrix_size*matrix_size ; i++)
        {
            rput(rand()%100, a+i).wait();
            rput(rand()%100, b+i).wait();
            rput(0, c+i).wait();
        }
    }
    
    //brodcast arrays to other ranks
    a = upcxx::broadcast(a, 0).wait();
    b = upcxx::broadcast(b, 0).wait();
    c = upcxx::broadcast(c, 0).wait();
    
    upcxx::barrier();
    
    clock_t timer;
    timer = clock();
    
    //MatMul ***NOTE: This matmul is technically serial as the work is not split between the processors(we think). 
    for(int i=start_itr ; i<end_itr ; i++)
    {
        for(int j=start_itr ; j<end_itr ; j++)
        {
            int cij = 0;
            for(int k=0 ; k<matrix_size ; k++)
            {
                //cij += aik * bkj
                cij += rget(a + (i*matrix_size+k)).wait() * rget(b + (k*matrix_size+j)).wait();
            }
            rput(cij, c + (i*matrix_size+j));
        }
    }
    
    upcxx::barrier();
    timer = clock() - timer;
    printf ("Processor %d/%d - %d clicks (%f seconds).\n", upcxx::rank_me()+1, n_ranks, timer,((float)timer)/CLOCKS_PER_SEC);
    
    
    // if(upcxx::rank_me() == 0)
    // {
    //     // print out matrix c
    //     for(int i=0 ; i<matrix_size ; i++)
    //     {
    //         for(int j=0 ; j<matrix_size ; j++)
    //         {
    //             std::cout << rget(c + (i*matrix_size+j)).wait() << " ";
    //         }
    //         std::cout << std::endl;
    //     }
    // }
}

void find_rank_size()
{
    matrix_size_per_ranks = (matrix_size*matrix_size/n_ranks);
    
    start_itr = matrix_size_per_ranks*upcxx::rank_me();
    
    if(matrix_size_per_ranks * (upcxx::rank_me()+1) != (matrix_size*matrix_size)-1)
    {
        end_itr = (matrix_size_per_ranks *(upcxx::rank_me()+1))-1;
    }
    else
    {
        end_itr = (matrix_size*matrix_size)-1;
    }
    
//     std::cout << upcxx::rank_me()+1 << "/" << n_ranks << std::endl;
//     std::cout << "start: " << start_itr << ", end: " << end_itr << std::endl;
//     std::cout << matrix_size_per_ranks << std::endl << std::endl;
}