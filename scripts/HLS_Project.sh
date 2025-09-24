#!/usr/bin/bash

if [[ $# -ne 4 ]]; then
    echo "usage: HLS_Project.sh <TOP_MODULE> <HW_STYLE> <MODE> <MI>" >&2
else
echo "#************************************************************************"
echo "#* Environment setting for HLS, Co-Simulmatio/Emulation & ETRI050"
echo "#************************************************************************"
	echo "export TOP_MODULE="$1
	echo "export HW_STYLE="$2
	echo "export MODE="$3
	echo "export MI="$4
#	export TOP_MODULE=$1
#	export HW_STYLE=$2
#	export MODE=$3
#	export MI=$4
	cp ~/ETRI050_DesignKit/scripts/HLS_Project/Makefile .
fi

