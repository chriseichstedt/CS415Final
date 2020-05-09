 export PATH="../../upcxx2020/bin/:$PATH"
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 10 >> res10.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 25 >> res25.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 50 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 1 ./upcxx_matmul 100 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 2 ./upcxx_matmul 100 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 4 ./upcxx_matmul 100 >> res50.stdout
 UPCXX_SEGMENT_MB=32000 GASNET_MAX_SEGSIZE=32000M ../../upcxx2020/bin/upcxx-run -n 8 ./upcxx_matmul 100 >> res50.stdout
