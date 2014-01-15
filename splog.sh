#!/bin/tcsh
#split log 
set app_path = "your_project_path"
set log_path = "${app_path}/log";
set to_day = `date -d "yesterday" +"%Y%m%d"`;
mv ${log_path}/production.log ${log_path}/production_${to_day}.log
mv ${log_path}/rainbows.error.log ${log_path}/rainbows.error_${to_day}.log
echo "" > ${log_path}/production.log
chown www:www ${log_path}/production.log
cd ${app_path}
./service.sh reload
pbzip2 ${log_path}/production_${to_day}.log ${log_path}/rainbows.error_${to_day}.log
