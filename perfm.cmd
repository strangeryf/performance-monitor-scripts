@echo off
set cnt_name=%1
set proc_name=%2

set param=-c "\Process(%proc_name%)\%% Processor Time" "\Process(%proc_name%)\Private Bytes"

@echo on
logman create counter %cnt_name% %param% -si 00:01 -o c:\temp\%cnt_name% -f csv
logman start %cnt_name%