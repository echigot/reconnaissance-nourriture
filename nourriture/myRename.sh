#!/bin/bash
cd train/FranceTest

if [ $# -eq 0 ] 
then
	echo ""
	echo "        1 argument nécessaire : nom de rangement des fichiers"
	echo "        usage : ./myRename.sh france"
	exit 1
fi 
name=$1
a=`ls`
k=1
for i in $a
do
    echo -n "k = "
    echo $k
    if [ $k -lt 10 ] 
    then 
    	new=$(printf "${1}00%d.jpg" "$k")
    elif [ $k -lt 100 ] 
    then 
    	new=$(printf "${1}0%d.jpg" "$k")
    elif [ $k -lt 1000 ] 
    then 
    	new=$(printf "${1}%d.jpg" "$k")
    else 
	echo ""
    fi
    mv "$i" "$new"
    k=$(( $k+1 ))
done

