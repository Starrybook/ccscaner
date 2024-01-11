#!/bin/bash
# set -x

############################################################
#                                                          #
# This script:                                             #
#                                                          #
# is used to test the functionality of the ccscaner and    #
# ccprinter. It accepts several command-line arguments to  #
# control the behavior of these scripts.                   #
#                                                          #
# Usage:                                                   #
# ./test-file.sh [-n|--no-debug] [-a|--ast]                #
#                [-c|--csv-res <table_name>] [-d|--detail] #
#                 -f|--file <src_file_path>                #
#                                                          #
# Options:                                                 #
# -n|--no-debug: Run the scripts in non-debug mode.        #
# -a|--ast: Run the ccprinter.py script to print the       #
#           Abstract Syntax Tree (AST) of the source file. #
# -c|--csv-res <table_name>: Run the ccscaner.py script to #
#           store the feature table into a CSV file. The   #
#           name of the file is specified by <table_name>. #
# -d|--detail: Run the ccscaner.py to store detailed       #
#              information about the source file.          #
# -f|--file <src_file_path>: Specify the path of src_file  #
#              to be scanned. This is a required argument. #
#                                                          #
# Example:                                                 #
# ./test-file.sh --no-debug --ast --csv-res feature_table \#
#                --detail --file /path/to/source/file      #
#                                                          #
############################################################

DEBUG_MODE=true
PRINT_AST=0
STORE_FEATURE_TABLE=0
FEATURE_TABLE_NAME=""
STORE_DETAILED_INFO=0
SRC_FILE_PATH=""

while (( "$#" )); do
  case "$1" in
    -n|--no-debug)
      DEBUG_MODE=false
      shift
      ;;
    -a|--ast)
      PRINT_AST=1
      shift
      ;;
    -c|--csv-res)
      STORE_FEATURE_TABLE=1
      FEATURE_TABLE_NAME=$2
      shift 2
      ;;
    -d|--detail)
      STORE_DETAILED_INFO=1
      shift
      ;;
    -f|--file)
      SRC_FILE_PATH=$2
      shift 2
      ;;
    *)
      echo "Error: Invalid argument"
      exit 1
  esac
done

if [[ ! -f $SRC_FILE_PATH ]]; then
    echo "Error: Source file does not exist"
    exit 1
fi

EXTENSION="${SRC_FILE_PATH##*.}"
VALID_EXTENSIONS="c cc cpp cxx h hpp hxx"
if [[ ! " ${VALID_EXTENSIONS[@]} " =~ " ${EXTENSION} " ]]; then
    echo "Error: Invalid file extension: $EXTENSION"
    exit 1
fi

if [[ $STORE_FEATURE_TABLE -eq 1 ]]; then
    if [[ $FEATURE_TABLE_NAME == "default" ]]; then
        FEATURE_TABLE_NAME=$(basename "$SRC_FILE_PATH" | cut -f 1 -d '.')
    fi
    # echo "Creating feature table at ./res/feature-tables/${FEATURE_TABLE_NAME}.csv"
    touch ./res/feature-tables/${FEATURE_TABLE_NAME}.csv
fi
# if [[ $STORE_DETAILED_INFO -eq 1 ]]; then
#     echo "Filling detailed info at ./res/repos-info/ ..."
    # need not to verify if the path exists
    # test-dir.sh will garantee that
# fi

if [[ $PRINT_AST -eq 1 ]]; then
    # echo "Running ccprinter.py"
    # echo "python3 ccprinter.py $SRC_FILE_PATH false false"
    python3 ccprinter.py $SRC_FILE_PATH false false
fi

# Call ccscaner.py
# echo "Running ccscaner.py"
# echo "python3 ccscaner.py $SRC_FILE_PATH $DEBUG_MODE ./res/feature-tables/${FEATURE_TABLE_NAME}.csv ./res/repos-info/"
python3 ccscaner.py $SRC_FILE_PATH $DEBUG_MODE ./res/feature-tables/${FEATURE_TABLE_NAME}.csv ./res/repos-info/

echo "Done."