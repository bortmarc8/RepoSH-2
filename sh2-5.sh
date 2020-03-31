#!/bin/bash
arch=$1;
acum=0;
count=0;
while read linea; do
	acum=$((acum + linea));
	count=$((count + 1));
done < $arch

echo "La media es: $((acum/count))";