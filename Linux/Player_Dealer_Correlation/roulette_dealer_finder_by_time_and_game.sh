#! /bin/bash
# Setting a name for variable $3 allows insertion into the awk command.
# Then use variable $3,$4 for Blackjack; $5,$6 for Roulette; and $7,$8 for Texas Hold Em
game=$3
cat $1_Dealer_schedule | grep "$2" | awk -F" " '{print $1,$2,'$game' }'




