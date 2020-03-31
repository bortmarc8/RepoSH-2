#!/bin/bash
arch=$1
while read linea; do
	mkdir $linea;
	for (( i = 1; i < 4; i++ )); do
		mkdir $linea/directorio$i;
	done
done < $arch