#!/usr/bin/bash
echo 'Klayout DRC using converted script ......'
klayout -b -r ../etri_05um_converted_final.drc -rd gdsfile=Err_Test.gds -rd resultsfile=drc_output_converted.lyrdb
echo 'Klayout DRC using generated script ......'
klayout -b -r ../etri_05um_generated_final.drc -rd gdsfile=Err_Test.gds -rd resultsfile=drc_output_generated.lyrdb
