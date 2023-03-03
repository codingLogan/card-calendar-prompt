#!/bin/bash

offset=0

# The hyphen "-" after % make date NOT pad with zeros
raw_week_number=$(date '+%-V')
effective_number=$(( $raw_week_number + $offset))

echo $effective_number

# Determine suit
suit="Joker"
if [ $effective_number -lt 14 ]
then
  suit="Heart"
elif [ $effective_number -lt 27 ]
then
  suit="Club"
elif [ $effective_number -lt 40 ]
then
  suit="Diamond"
elif [ $effective_number -lt 53 ]
then
  suit="Spade"
else
  suit="Joker"
fi

echo $suit