#!/bin/bash

QUARTER2=14
QUARTER3=27
QUARTER4=40
QUARTER5=53
WEEKS_PER_QUARTER=13

WEEK_OFFSET=0

# The hyphen "-" after % make date NOT pad with zeros
RAW_WEEK=$(date '+%-V')
WEEK_NUMBER=$(( $RAW_WEEK + $WEEK_OFFSET))

# Determine suit
suit="Joker"
if [ $WEEK_NUMBER -lt $QUARTER2 ]
then
  suit="♥"
elif [ $WEEK_NUMBER -lt $QUARTER3 ]
then
  suit="♣"
elif [ $WEEK_NUMBER -lt $QUARTER4 ]
then
  suit="♦"
elif [ $WEEK_NUMBER -lt $QUARTER5 ]
then
  suit="♠"
else
  suit="🂿"
fi

# Determine Card
card=$(($WEEK_NUMBER % $WEEKS_PER_QUARTER))

case $card in
  1)
    card="A"
    ;;
  11)
    card="J"
    ;;
  12)
    card="Q"
    ;;
  # 13 Modulo 13 is 0
  0)
    card="K"
    ;;
esac

# echo "$card$suit"
