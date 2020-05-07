#include <upcxx/upcxx.hpp>
#include <iostream>

int main(int argc, char* argv[])
{
    upcxx::init();
    
    //set up global array
    upcxx::global_ptr<int> a = upcxx::new_array<int>(9);
    upcxx::global_ptr<int> b = upcxx::new_array<int>(9);
    upcxx::global_ptr<int> c = upcxx::new_array<int>(9);
    //rput values into abc
    for(int i=0;i<9;i++)
    {
        rput(1,a+i).wait();
        rput(1,b+i).wait();
        rput(0,c+i).wait();
    }
    //matmul using a&b into c
    for(int i=0;i<3;i++)
    {
        for(int j=0;j<3;j++)
        {
            int cij = 0; //cij+=aik*bkj
            for(int k=0;k<3;k++)
            {
                cij+=rget(a+(i*3+k)).wait()*rget(b+(k*3+j)).wait();
            }
            rput(cij,c+(i*3+j)).wait();
        }
    }
    //rget values in c
    for(int i=0;i<9;i++)
    {
        std::cout << rget(c+i).wait() << std::endl;
    }
    
    upcxx::finalize();
}