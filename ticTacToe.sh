#!/bin/bash -x

declare -A board

# Variables

noOfRows=3
noOfColumns=3
X="x"
O="o"
initializeBoard()
{
	for (( r=1; r<=$noOfRows; r++ ))
	do
		for ((c=1; c<=$noOfColumns; c++ ))
		do
			board[r,c]=" "
		done
	done
}

displayBoard()
{
	initializeBoard

	for (( r=1; r<=$noOfRows; r++ ))
	do
		echo "---------------"
		for (( c=1; c<=$noOfColumns; c++ ))
		do
			printf "| ${board[r,c]} |"
		done
		echo
	done
	echo "---------------"

}
letterCheck()
{
letterCheck=$((RANDOM%2))
case $letterCheck in 
	0) echo "You have assigned : "$O
	;;
	1) echo "You have assigned : "$X
	;;
esac
}

displayBoard
letterCheck
