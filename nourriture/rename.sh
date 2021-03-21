#!/bin/bash
cd train/AmeriqueCentrale
k=1
for i in *.jpg
do
    echo " $i "
    new=$(printf "ameriquecentrale%d.jpg" "$k")
    mv "$i" "$new"
    k=$(($k+1))
done

