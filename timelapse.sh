#!/bin/bash
# Simple script to help take timelapse photos with the rPI camera module

often=$((num_one * 1000))
duration=$((num_two * 1000 * 60))

echo -e "\n$(((num_two * 60) / num_one)) pictures will be taken\n\n"
echo -e "Starting now..."

raspistill -o img%04d.jpg -tl $often -t $duration

echo -e "\nAll done"
