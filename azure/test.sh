 export PATH="../../upcxx2020/bin/:$PATH"
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 1 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 2 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 4 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 8 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 1 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 2 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 4 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 8 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 1 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 2 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 4 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 8 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 1 ./upcxx_matmul 100 >> res100.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 2 ./upcxx_matmul 100 >> res100.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 4 ./upcxx_matmul 100 >> res100.stdout
 UPCXX_SEGMENT_MB=64000 GASNET_MAX_SEGSIZE=64000M ../../upcxx2020/bin/upcxx-run -n 1 -N 8 ./upcxx_matmul 100 >> res100.stdout
