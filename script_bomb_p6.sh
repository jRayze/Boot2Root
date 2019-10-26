#!/bin/bash

Permutation()
{
	if [[ "$1" ]]
		then
			for (( i=0 ; i < ${#1} ; i++ ))
			do
				( Permutation "${1:0:i}${1:i+1}" "$2${1:i:1}" )
			done
		else
			touch bt_phase_6
			echo "Public speaking is very easy." >> bt_phase_6
			echo "1 2 6 24 120 720" >> bt_phase_6
			echo "1 b 214" >> bt_phase_6
			echo "9" >> bt_phase_6
			echo "opekmq" >> bt_phase_6
			echo "4"$2 | sed 's/./& /g' >> bt_phase_6
			retour=$( ./bomb bt_phase_6 | grep 'BOOM')
			#cat bt_phase_6
			echo $retour
			if [ "1${retour}" = "1" ];
				then
					touch reponse
					cp bt_phase_6 reponse
			fi
			rm bt_phase_6
			echo $2
	fi
}
Permutation "12356"
