#!/bin/bash
cd Hamburger
k=1
for i in *.jpg
do
    echo " $i "
    new=$(printf "burger%d.jpg" "$k")
    mv "$i" "$new"
    k=$(($k+1))
done

