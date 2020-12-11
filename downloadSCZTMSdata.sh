#!/bin/bash
#!/usr/bin/env python

i=$1

#Local
#DATA_DIR=/Volumes/mrrcdata/Bipolar_R01

#Cluster
DATA_DIR=/Shared/MRRCdata/SCZ_TMS_TIMING

CONFIG=/Users/jjshaffer/xnat_downloader/config.json
#INPUT=$DATA_DIR/scripts/xnat_downloader/BIPOLAR_CRBL_2-18-2019.json
#INPUT=/Users/jjshaffer/xnat_downloader/BIPOLAR_CRBL_2-18-2019.json
INPUT=/Users/jjshaffer/xnat_downloader/TMS_SCZ_12-31-2019.json
#BD

SUBJECTS[1]="CBM0001"
SUBJECTS[2]="CBM0011"
SUBJECTS[3]="CBM0031"
SUBJECTS[4]="CBM0041"
SUBJECTS[5]="CBM0051"
SUBJECTS[6]="CBM0061"
SUBJECTS[7]="CBM0071"
SUBJECTS[8]="CBM0081"
SUBJECTS[9]="CBM0091"

SUBJECTS[10]="CBM0101"
SUBJECTS[11]="CBM0111"

SUBJECTS[12]="CTL9001"
SUBJECTS[13]="CTL9011"
SUBJECTS[14]="CTL9021"
SUBJECTS[15]="CTL9041"

#python /Users/jjshaffer/xnat_downloader/build/lib/xnat_downloader/cli/run.py -c $CONFIG -i $INPUT -s ${SUBJECTS[$i]} -n ${SUBJECTS[$i]//-} 


xnat_downloader -c $CONFIG -i $INPUT -s ${SUBJECTS[$i]} -n ${SUBJECTS[$i]}


