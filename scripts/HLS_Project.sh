#!/usr/bin/bash

if [[ $# -ne 4 ]]; then
    echo "usage: HLS_Project.sh <TOP_MODULE> <HW_STYLE> <MODE> <MI>" >&2
else
	echo "#************************************************************************"
	echo "#* Environment setting for HLS, Co-Simulmatio/Emulation & ETRI050"
	echo "#************************************************************************"
	echo "Setting Environment variables as follows;"
	echo "    PROJECT_DIR=`pwd`"
	echo "    TOP_MODULE="$1
	echo "    HW_STYLE="$2
	echo "    MODE="$3
	echo "    MI="$4
	echo "export PROJECT_DIR=\`pwd\`" > env_settings
	echo "export TOP_MODULE="$1  >> env_settings
	echo "export HW_STYLE="$2  >> env_settings
	echo "export MODE="$3  >> env_settings
	echo "export MI="$4  >> env_settings
	echo "echo '#************************************************************************'"  >> env_settings
	echo "echo '#* Environment setting for HLS, Co-Simulmatio/Emulation & ETRI050'"  >> env_settings
	echo "echo '#************************************************************************'"  >> env_settings
	echo "echo 'Setting Environment variables as follows;'"  >> env_settings
	echo "echo '    PROJECT_DIR='\$PROJECT_DIR"  >> env_settings
	echo "echo '    TOP_MODULE='\$TOP_MODULE"  >> env_settings
	echo "echo '    HW_STYLE='\$HW_STYLE"  >> env_settings
	echo "echo '    MODE='\$MODE"  >> env_settings
	echo "echo '    MI='\$MI"  >> env_settings
	cp ~/ETRI050_DesignKit/scripts/HLS_Project/Makefile .
fi

