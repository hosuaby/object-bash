#!/usr/bin/env bash

__Order_total() {
  ans=`echo "$5 * $7" | bc -l`
  echo "$ans"
}

order=( "Order" "article" "NULL" "count" "NULL" "price" "NULL" )
order[2]="books"
order[4]=3
order[6]=2.6

total=`__Order_total "${order[@]}"`
echo "${total}"
