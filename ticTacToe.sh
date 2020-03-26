#!/bin/bash -x

declare -A board

# Variables
user=0
computer=1
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

tossTheCoin(){
	if [[ $((RANDOM%2)) -eq 0 ]]; then
		echo "Player1 Will Play First"
	else
		echo "Computer Will Play First"
	fi
}

function getTurn()
{
	firstTurn=$((RANDOM%2))
	case $firstTurn in
		$user)
			 echo "User plays first"
		;;
		$computer)
			 echo "Computer plays first"
		;;
	esac
}
displayBoard
letterCheck
tossTheCoin
getTurn

