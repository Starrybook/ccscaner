#!/bin/bash

# Initialize variables
DEBUG=true
AST=false
CSV_RES=false
DETAIL=false
FILE=""

# Parse command-line options
while getopts "nacdf:" opt; do
  case ${opt} in
    n ) # Process -n option
      DEBUG=false
      ;;
    a ) # Process -a option
      AST=true
      ;;
    c ) # Process -c option
      CSV_RES=true
      ;;
    d ) # Process -d option
      DETAIL=true
      ;;
    f ) # Process -f option
      FILE=$OPTARG
      ;;
    \? ) echo "Usage: cmd [-n] [-a] [-c] [-d] -f file"
      ;;
  esac
done

# Check if file is provided
if [ -z "$FILE" ]
then
  echo "No file provided. Use -f option to specify a file."
  exit 1
fi

# Check if file extension is valid
EXTENSION="${FILE##*.}"
VALID_EXTENSIONS="c cc cpp cxx h hpp hxx"
if [[ ! " ${VALID_EXTENSIONS[@]} " =~ " ${EXTENSION} " ]]; then
  echo "Invalid file extension. Only c|cc|cpp|cxx|h|hpp|hxx are allowed."
  exit 1
fi

FILE_NAME_WITHOUT_SUFFIX=$(basename "$FILE" | cut -f 1 -d '.')
DATE_TIME=$(date 'Jan-%d_%H-%M')
FEATURE_TABLE_PATH=""
DETAILED_INFO_PATH=""

# Check if feature table should be stored
if [ "$CSV_RES" = true ] ; then
  FEATURE_TABLE_PATH="./res/feature-table/${FILE_NAME_WITHOUT_SUFFIX}-${DATE_TIME}.csv"
  mkdir -p $(dirname $FEATURE_TABLE_PATH)
  touch $FEATURE_TABLE_PATH
  echo "Feature table will be stored at: $FEATURE_TABLE_PATH"
fi

# Check if detailed info should be stored
if [ "$DETAIL" = true ] ; then
  DETAILED_INFO_PATH="./res/repos-info/${FILE_NAME_WITHOUT_SUFFIX}-${DATE_TIME}.csv"
  mkdir -p $(dirname $DETAILED_INFO_PATH)
  touch $DETAILED_INFO_PATH
  echo "Detailed info will be stored at: $DETAILED_INFO_PATH"
fi

# Call ccprinter.py if -a option is set
if [ "$AST" = true ] ; then
  python ccprinter.py $FILE
fi

# Call ccscaner.py
python ccscaner.py $FILE $DEBUG $FEATURE_TABLE_PATH $DETAILED_INFO_PATH

echo "Done."