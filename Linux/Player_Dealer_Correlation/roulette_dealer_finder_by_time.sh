#! /bin/bash

# I figured out two ways to find the Roulette dealer by time. 
# The first way shortens the time to hour immediately followed by AM or PM with no space.
# This makes it much shorter to enter the hour and time by making it one field such as 02AM.

# sed 's/:00:00 //' $1_Dealer_schedule| 
# grep $2 | awk '{print $1,$4,$5}'

# However, since others using this shell might not know to enter the abbreviated time,
# The following will work using the long format for time  02:00:00 AM.

cat $1_Dealer_schedule | grep "$2" | awk -F" " '{print $1,$2,$5,$6}'
