 export PATH="../../upcxx2020/bin/:$PATH"
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 10 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 10 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 10 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 10 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 100 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 100 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 100 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 100 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 1000 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 1000 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 1000 >> res.stdout
 UPCXX_SEGMENT_MB=100000 GASNET_MAX_SEGSIZE=100000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 1000 >> res.stdout
