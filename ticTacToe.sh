#!/bin/bash -x

declare -A board

player="a"
turn=0
noOfRows=3
noOfColumns=3

initializeBoard(){
   for (( r=1; r<=$noOfRows; r++ )); do
      for ((c=1; c<=$noOfColumns; c++ )); do
         board[$r,$c]="+"
      done
   done
}

displayBoard(){
   for (( r=1; r<=$noOfRows; r++ )); do
      echo "---------------"
      for (( c=1; c<=$noOfColumns; c++ )); do
         printf "[ ${board[$r,$c]} ]"
      done
      echo
   done
   echo "---------------"
}

letterAssign(){
      playerOne="X"
      playerTwo="O"
}

toss(){
   if [[ $((RANDOM%2)) -eq 0 ]]; then
      echo "Player1 Will Play First"
   else
      echo "Player2 Will Play First"
   fi
}

startToPlay(){
   letterAssign
   while [[ $turn -lt 9 && isWon -eq 0 ]]
   do
      if [[ $(($turn%2)) -eq 0 ]]; then


