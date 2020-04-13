#!/bin/bash
contador=1
maximo=`cat listado.txt | wl -l`
contlinux=0
contwindows=0
procesoslinux=0
procesoswindows=0

while [[ $contador -le $maximo ]]; do
	linea=`cat listado.txt | head -${contador} | tail -l`
	sistema=`echo $linea | awk '{print $2}'`
	valor=`echo $linea | awk '{print $3}'`

	if [ $sistema = "Linux" ]; then
		contlinux=$((contlinux+1))
		procesoslinux=$((procesoslinux+valor))
	elif [[ $sistema = "Windows" ]]; then
		contwindows=$((contwindows+1))
		procesoswindows=$((procesoswindows+valor))
	fi
	contador=$((contador+1))
done

echo "Linux -> $contlinux $procesoslinux"
echo "Windows -> $contwindows $procesoswindows"