#!/bin/bash
# Simple script to help take timelapse photos with the rPI camera module

num_one=0
num_two=0

echo -e "\n\n"
echo "* * * * * * * * * * * * * * * *"
echo "* You should run this inside  *"
echo "*  a screen session so the    *"
echo "*  timelapse doesn't die if   *"
echo "*  your SSH session closes    *"
echo "* * * * * * * * * * * * * * * *"
echo -en "\n\nHow often would you like a photo to be taken (in seconds): "
read num_one
echo -n "How long would you like the time lapse to run (in minutes): "
read num_two

often=$((num_one * 1000))
duration=$((num_two * 1000 * 60))

echo -e "\n$(((num_two * 60) / num_one)) pictures will be taken\n\n"
echo -e "Starting now..."

raspistill -o img%04d.jpg -tl $often -t $duration

echo -e "\nAll done"
