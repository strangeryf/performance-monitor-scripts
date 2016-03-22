# performance-monitor-scripts
My process performance monitor scripts for Windows and Linux
Usage:
Windows
Make sure a temporary directory C:\temp has be created, then run the following command as administrator
perfm.cmd performance_counter_name process_name(without.exe)
When you want to stop monitoring, run the following command in administrator command console
logman stop performance_counter_nam
Linux
Make perfm.sh executable, get the PID of the process to be monitored, and run the following command
./perfm.sh pid
When you want to stop monitoring, simple press CTRL+C
