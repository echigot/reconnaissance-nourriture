#!/bin/bash


if [ $# -ne 2 ] 
then
	echo ""
	echo " 2 arguments nécessaires :"
	echo " 	1) nom du répertoire où trier"
	echo " 	2) nom choisi pour ranger les fichiers"
	echo ""
	echo " usage exemple : ./myRename.sh train/FranceTest france"
	exit 1
fi 


cd $1

name=$2
a=`ls`
k=1
for i in $a
do
    echo -n "k = "
    echo $k
    if [ $k -lt 10 ] 
    then 
    	new=$(printf "${2}00%d.jpg" "$k")
    elif [ $k -lt 100 ] 
    then 
    	new=$(printf "${2}0%d.jpg" "$k")
    elif [ $k -lt 1000 ] 
    then 
    	new=$(printf "${2}%d.jpg" "$k")
    else 
	echo ""
    fi
    mv "$i" "$new"
    k=$(( $k+1 ))
done


a2=`ls`
k2=1
for i in $a2
do
    echo -n "k = "
    echo $k2
    new=$(printf "${2}%d.jpg" "$k2")
    mv "$i" "$new"
    k2=$(( $k2+1 ))

done

