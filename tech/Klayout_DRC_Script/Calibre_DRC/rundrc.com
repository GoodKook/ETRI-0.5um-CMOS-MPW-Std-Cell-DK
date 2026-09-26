#! /bin/csh -fb

calibre -drc -turbo 4 -hier drc_header.cal | tee DRC.log
