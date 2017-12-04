#! /bin/bash
process=gogs
pid=`ps aux|grep $process|grep -v grep|awk '{print $2}'`
cmd=`ps aux|grep $process|grep -v grep|awk '{print $11}'`

echo $cmd > perf.log
echo time,pcpu,vsz,rss >> perf.log

while true; do
  date=`date "+%Y-%m-%d %H:%M:%S"`
  metrics=`ps -o pcpu,vsz,rss -p $pid|grep -v CPU|sed -r 's/ *([0-9.]+) +([0-9]+) +([0-9]+)/\1,\2,\3/'`
  echo $date,$metrics >> perf.log
  sleep 1
done
