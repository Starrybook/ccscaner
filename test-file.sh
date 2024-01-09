#!/bin/bash

##########################################################
#                                                        #
# This script:                                           #
#                                                        #
# Use the `-n` parameter to specify whether to enter     #
# debugging mode; use the `-a` parameter to specify      #
# whether to print syntax trees; use the `-f` parameter  #
# to specify a source file; use the `-c` parameter to    #
# specify whether to store feature tables and feature    #
# statistics tables. The storage location does not need  #
# to be given; use the `-d` parameter to specify whether #
# to store specific information, the storage location    #
# does not need to be given.                             #
#                                                        #
# If the default file does not exist, create the         #
# corresponding path and file. If the file suffix is not #
# in `c|cc|cpp|cxx|h|hpp|hxx`, it will not be executed   #
# and an error will be reported.                         #
#                                                        #
# If the parameters are all legal, call `ccscaner.py` to #
# perform the scanning operation. If you specify the `-a`#
# parameter, call `ccprinter.py` to print syntax tree.   #
#                                                        #
##########################################################

DEBUG=true
AST=false
CSV_RES=false
DETAIL=false
FILE=""

# Parse command-line options
while getopts "nacdf:" opt; do
  case ${opt} in
    n|--no-debug)
      DEBUG=false
      ;;
    a|--ast)
      AST=true
      ;;
    c|--csv-res)
      CSV_RES=true
      ;;
    d|--detail)
      DETAIL=true
      ;;
    f|--file)
      FILE=$OPTARG
      ;;
    \? ) echo "Usage: cmd [-n] [-a] [-c] [-d] -f file"
      ;;
  esac
done

if [ -z "$FILE" ]
then
  echo "No file provided. Use -f option to specify a file."
  exit 1
fi

EXTENSION="${FILE##*.}"
VALID_EXTENSIONS="c cc cpp cxx h hpp hxx"
if [[ ! " ${VALID_EXTENSIONS[@]} " =~ " ${EXTENSION} " ]]; then
  echo "Invalid file extension. Only c|cc|cpp|cxx|h|hpp|hxx are allowed."
  exit 1
fi

FILE_NAME_WITHOUT_SUFFIX=$(basename "$FILE" | cut -f 1 -d '.')
DATE_TIME=$(date '+%b-%d_%H-%M')
FEATURE_TABLE_PATH=""
DETAILED_INFO_PATH=""

if [ "$CSV_RES" = true ] ; then
  FEATURE_TABLE_PATH="./res/feature-tables/${FILE_NAME_WITHOUT_SUFFIX}-${DATE_TIME}.csv"
  mkdir -p $(dirname $FEATURE_TABLE_PATH)
  touch $FEATURE_TABLE_PATH
  echo "Feature table will be stored at: $FEATURE_TABLE_PATH"
fi

if [ "$DETAIL" = true ] ; then
  DETAILED_INFO_PATH="./res/repos-info/${FILE_NAME_WITHOUT_SUFFIX}-${DATE_TIME}.csv"
  mkdir -p $(dirname $DETAILED_INFO_PATH)
  touch $DETAILED_INFO_PATH
  echo "Detailed info will be stored at: $DETAILED_INFO_PATH"
fi

if [ "$AST" = true ] ; then
  python3 ccprinter.py $FILE
fi

# Call ccscaner.py
python3 ccscaner.py $FILE $DEBUG $FEATURE_TABLE_PATH $DETAILED_INFO_PATH

echo "Done."
