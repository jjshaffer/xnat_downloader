#!/bin/bash
#!/usr/bin/env python

i=$1

#Local
#DATA_DIR=/Volumes/mrrcdata/Bipolar_R01

#Cluster
DATA_DIR=/Shared/MRRCdata/BD_TMS_TIMING

CONFIG=/Users/jjshaffer/xnat_downloader/config.json
#INPUT=$DATA_DIR/scripts/xnat_downloader/BIPOLAR_CRBL_2-18-2019.json
#INPUT=/Users/jjshaffer/xnat_downloader/BIPOLAR_CRBL_2-18-2019.json
INPUT=/Users/jjshaffer/xnat_downloader/TMS_CRBL_12-31-2019.json
#BD

SUBJECTS[1]="CBM0501"
SUBJECTS[2]="CBM0511"
SUBJECTS[3]="CBM0531"
SUBJECTS[4]="CBM0541"
SUBJECTS[5]="CBM0551"
SUBJECTS[6]="CBM0561"
SUBJECTS[7]="CBM0571"
SUBJECTS[8]="CBM0581"
SUBJECTS[9]="CBM0591"
SUBJECTS[10]="CMB0591"
SUBJECTS[11]="CBM0601"


#python /Users/jjshaffer/xnat_downloader/build/lib/xnat_downloader/cli/run.py -c $CONFIG -i $INPUT -s ${SUBJECTS[$i]} -n ${SUBJECTS[$i]//-} 


xnat_downloader -c $CONFIG -i $INPUT -s ${SUBJECTS[$i]} -n ${SUBJECTS[$i]}


