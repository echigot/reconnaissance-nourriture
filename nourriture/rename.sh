#!/bin/bash
cd AmeriqueNord
k=1
for i in *.jpg
do
    echo " $i "
    new=$(printf "AmeriqueNord.%d.jpg" "$k")
    mv "$i" "$new"
    k=$(($k+1))
done

