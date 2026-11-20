#!/usr/bin/bash
if [[ $# -ne 1 ]]; then
    echo "GDS file missing" >&2
    exit 2
fi
echo 'Klayout DRC using generated script ......'
klayout -b -r ~/ETRI050_DesignKit/tech/Klayout_DRC_Script/etri_05um_generated_final.drc -rd gdsfile=$1.gds -rd resultsfile=drc_output_generated.lyrdb
echo 'Klayout DRC using converted script ......'
klayout -b -r ~/ETRI050_DesignKit/tech/Klayout_DRC_Script/etri_05um_converted_final.drc -rd gdsfile=$1.gds -rd resultsfile=drc_output_converted.lyrdb
