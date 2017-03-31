# performance-monitor-scripts

My process performance monitor scripts for Windows and Linux

Usage:

Windows

Make sure a temporary directory C:\temp has been created, then run the following command as administrator

perfm.cmd performance_counter_name process_name(without.exe)

When you want to stop monitoring, run the following command as administrator in command console

logman stop performance_counter_nam

Linux

Set perfm.sh as executable, get the PID of the process to be monitored, and run the following command

./perfm.sh pid

Pess CTRL+C to stop.
