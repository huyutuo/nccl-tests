cur_sec_and_ns=`date '+%s-%N'`
cur_sec=${cur_sec_and_ns%-*}
cur_ns=${cur_sec_and_ns##*-}
cur_timestamp=$((cur_sec*1000+cur_ns/1000000))
echo 当前时间戳_1=$cur_timestamp

mpirun -np 4 -H localhost:1,172.26.89.160:1,172.26.89.159:1,172.26.89.158:1 --allow-run-as-root ./build/all_reduce_perf -g 1  -w 0 -c 0 -n 1 -b 1000M -e 1000M


cur_sec_and_ns=`date '+%s-%N'`
cur_sec=${cur_sec_and_ns%-*}
cur_ns=${cur_sec_and_ns##*-}
cur_timestamp=$((cur_sec*1000+cur_ns/1000000))
echo 当前时间戳_2=$cur_timestamp

mpirun -np 4 -H localhost:1,172.26.89.160:1,172.26.89.159:1,172.26.89.158:1 --allow-run-as-root ./build/all_reduce_perf -g 1  -w 0 -c 0 -n 1 -b 1M -e 1M

cur_sec_and_ns=`date '+%s-%N'`
cur_sec=${cur_sec_and_ns%-*}
cur_ns=${cur_sec_and_ns##*-}
cur_timestamp=$((cur_sec*1000+cur_ns/1000000))
echo 当前时间戳_3=$cur_timestamp