#!/bin/bash
#!/usr/bin/env python

i=$1

#Local
DATA_DIR=/Shared/MRRCdata/BD_TMS_TIMING

#Cluster
#DATA_DIR=/Shared/MRRCdata/Bipolar_R01

CONFIG=/Users/jjshaffer/xnat_downloader/config.json
#INPUT=$DATA_DIR/scripts/xnat_downloader/BIPOLAR_CRBL_2-18-2019.json
INPUT=/Users/jjshaffer/xnat_downloader/TMS_CRBL_12-31-2019.json

SUBJECTS[1]="CBM0101"
SUBJECTS[2]="CBM0411"
SUBJECTS[3]="CBM0421"
SUBJECTS[4]="CBM0431"
SUBJECTS[5]="CBM0441"
SUBJECTS[6]="CBM0451"
SUBJECTS[7]="CBM0461"
SUBJECTS[8]="CBM0471"
SUBJECTS[9]="CBM0481"
SUBJECTS[10]="CBM0491"

SUBJECTS[11]="CBM0501"
SUBJECTS[12]="CBM0511"
SUBJECTS[13]="CBM0531"
SUBJECTS[14]="CBM0541"
SUBJECTS[15]="CBM0551"
SUBJECTS[16]="CBM0561"
SUBJECTS[17]="CBM0571"
SUBJECTS[18]="CBM0581"
SUBJECTS[19]="CBM0591"
SUBJECTS[20]="CMB0591"
SUBJECTS[21]="CBM0601"
SUBJECTS[22]="CBM0611"
SUBJECTS[23]="CBM0621"


SUBJECTS[24]="CBM0631"
SUBJECTS[25]="CBM0641"
SUBJECTS[26]="CBM0651"
SUBJECTS[27]="CBM0661"
SUBJECTS[28]="CBM0671"



echo ${SUBJECTS[$i]//-}

#python /Users/jjshaffer/xnat_downloader/build/lib/xnat_downloader/cli/run.py -c $CONFIG -i $INPUT -s ${SUBJECTS[$i]} -n ${SUBJECTS[$i]//-} 


xnat_downloader -c $CONFIG -i $INPUT -s ${SUBJECTS[$i]} -n ${SUBJECTS[$i]//-}

