#!/bin/bash -x

declare -A board

# Variables

noOfRows=3
noOfColumns=3

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

displayBoard
