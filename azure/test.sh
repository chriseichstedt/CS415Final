 export PATH="../../upcxx2020/bin/:$PATH"
 UPCXX_SEGMENT_MB=1024 GASNET_MAX_SEGSIZE=1024M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 3 >> res.stdout
 UPCXX_SEGMENT_MB=1024 GASNET_MAX_SEGSIZE=1024M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 3 >> res.stdout
 UPCXX_SEGMENT_MB=1024 GASNET_MAX_SEGSIZE=1024M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 3 >> res.stdout
 UPCXX_SEGMENT_MB=1024 GASNET_MAX_SEGSIZE=1024M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 3 >> res.stdout
