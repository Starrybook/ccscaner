#!/bin/bash
# untested

# Initialize variables
DEBUG=true
STORE_FEATURE_TABLE=false
STORE_DETAILED_INFO=false
DIR=""

# Parse command-line options
while getopts "ncdr:" opt; do
  case ${opt} in
    n ) # Process -n option
      DEBUG=false
      ;;
    c ) # Process -c option
      STORE_FEATURE_TABLE=true
      ;;
    d ) # Process -d option
      STORE_DETAILED_INFO=true
      ;;
    r ) # Process -r option
      DIR=$OPTARG
      ;;
    \? ) echo "Usage: cmd [-n] [-c] [-d] -r dir"
      ;;
  esac
done

# Check if directory is provided
if [ -z "$DIR" ]
then
  echo "No directory provided. Use -r option to specify a directory."
  exit 1
fi

# Get date time
DATE_TIME=$(date '+%Y-%m-%d_%H-%M-%S')

# Process each file in the directory
FILE_COUNT=0
for FILE_PATH in $DIR*; do
  # Check file extension
  EXTENSION="${FILE_PATH##*.}"
  VALID_EXTENSIONS="c cc cpp cxx h hpp hxx"
  if [[ ! " ${VALID_EXTENSIONS[@]} " =~ " ${EXTENSION} " ]]; then
    continue
  fi

  FILE_COUNT=$((FILE_COUNT+1))
  echo "Processing file $FILE_COUNT: $FILE_PATH"

  # Get file name without suffix
  FILE_NAME=$(basename "$FILE_PATH" | cut -f 1 -d '.')

  # Check if feature table should be stored
  if [ "$STORE_FEATURE_TABLE" = true ] ; then
    FEATURE_TABLE_PATH="./res/feature-table/${FILE_NAME}-${DATE_TIME}.csv"
    mkdir -p $(dirname $FEATURE_TABLE_PATH)
    touch $FEATURE_TABLE_PATH
    echo "Feature table will be stored at: $FEATURE_TABLE_PATH"
  fi

  # Check if detailed info should be stored
  if [ "$STORE_DETAILED_INFO" = true ] ; then
    DETAILED_INFO_PATH="./res/repos-info/${FILE_NAME}-${DATE_TIME}/"
    mkdir -p $DETAILED_INFO_PATH
    echo "Detailed info will be stored at: $DETAILED_INFO_PATH"
  fi

  # Call test-file.sh for each file
  ./test-file.sh $FILE_PATH
done