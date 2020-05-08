 export PATH="../../upcxx2020/bin/:$PATH"
 ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 3 >> res.stdout
 ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 3 >> res.stdout
 ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 3 >> res.stdout
 ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 3 >> res.stdout
