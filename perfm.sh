#! /bin/bash
if [ $# -lt 1 ]; then
  echo "usage $0 pid"
  exit
fi

echo pcpu,vsz,rss > perf.log

while true; do
  ps -o pcpu,vsz,rss -p $1 | grep -v CPU | sed -r 's/ *([0-9.]+) +([0-9]+) +([0-9]+)/\1,\2,\3/' >> perf.log
  sleep 1
done
