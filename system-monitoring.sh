#!/bin/bash

echo "#################################################################################################################"
echo "System Monitoring report - $(date)"
echo




#Disk Usage
echo "#################################################################################################################"
echo "# Disk Usage   ##################################################################################################" | tee -a system-monitoring.log
df -H | tee -a system-monitoring.log				# Displayes output in G
echo




# Sending Email in case of exceeding the threshold


used_percentage=$(df -H | grep -w "/vagrant" | awk '{print $5}' | sed 's/%//')
# Check if used percentage exceeds 60%
if [ "$used_percentage" -gt 80 ]; then
    echo "The vagrant directory usage is above 60% ($used_percentage%)." | mail -s "a subject" basekabouelnour@gmail.com
    echo "<<<<< Email sent >>>>>> " >> system-monitoring.log 
fi


#CPU Usage
echo "#################################################################################################################" 
echo "# CPU Usage    ##################################################################################################" | tee -a system-monitoring.log
mpstat | tee -a system-monitoring.log
echo

#Memory Usage
echo "#################################################################################################################"
echo "# Memory Usage ##################################################################################################" | tee -a system-monitoring.log
echo "$(free -m | cut -f 14-35 -d ' ')" | tee -a system-monitoring.log  # Displaying only 3 fields Total, Used, Free





# last step saving to log file
echo "-----------------------------------------------------------------------------------------------------------------" >> system-monitoring.log
echo "report at $(date) -------------------------------------------------------------------------" >> system-monitoring.log
echo "-----------------------------------------------------------------------------------------------------------------" >> system-monitoring.log
