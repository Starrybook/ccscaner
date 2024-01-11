#!/bin/bash
# set -x

############################################################
#                                                          #
# This script:                                             #
#                                                          #
# is used to test the functionality of the test-file.sh    #
# script on a directory of src files. It accepts several   # 
# command-line args to control the behavior of the script. #
#                                                          #
# Usage:                                                   #
# ./test-dir.sh [-n|--no-debug] [-c|--csv-res]             #
#               [-d|--detail] -r|--dir <src_dir_path>      #
#                                                          #
# Options:                                                 #
# -n|--no-debug: Run the script in non-debug mode.         #
# -c|--csv-res: Store the feature table into a CSV file.   #
#               The name of the CSV file is the name of    #
#               the source directory.                      #
# -d|--detail: Store detailed information about the source #
#              files.                                      #
# -r|--dir <src_dir_path>: Specify the path of the source  #
#              directory to be scanned. This is a required #
#              argument.                                   #
#                                                          #
# Example:                                                 #
# ./test-dir.sh --no-debug --csv-res --detail              #
#               --dir /path/to/source/directory            #
#                                                          #
# This will run the test-file.sh script on each source     #
# file in the directory at /path/to/source/directory, with #
# debug mode turned off. The feature table will be stored  #
# in a CSV file named after the source directory, and      #
# detailed information about each source file will be      #
# stored.                                                  #
#                                                          #
############################################################

DEBUG_MODE=""
STORE_FEATURE_TABLE=""
STORE_DETAILED_INFO=""
SRC_DIR_PATH=""

while (( "$#" )); do
  case "$1" in
    -n|--no-debug)
      DEBUG_MODE="-n"
      shift
      ;;
    -c|--csv-res)
      STORE_FEATURE_TABLE="-c"
      shift
      ;;
    -d|--detail)
      STORE_DETAILED_INFO="-d"
      shift
      ;;
    -r|--dir)
      SRC_DIR_PATH=$2
      shift 2
      ;;
    *)
      echo "Error: Invalid argument"
      exit 1
  esac
done

if [[ ! -d $SRC_DIR_PATH ]]; then
    echo "Error: Source directory does not exist"
    exit 1
fi
if [[ $STORE_FEATURE_TABLE == "-c" ]]; then
    echo "Creating feature table at ./res/feature-tables/$(basename $SRC_DIR_PATH).csv"
    touch ./res/feature-tables/$(basename $SRC_DIR_PATH).csv
    STORE_FEATURE_TABLE="-c $(basename $SRC_DIR_PATH)"
fi
if [[ $STORE_DETAILED_INFO == "-d" ]]; then
    echo "Creating detailed info at ./res/repos-info/"
    touch ./res/repos-info/TEMPLATE_stl.csv
    touch ./res/repos-info/TEMPLATE_template.csv
    touch ./res/repos-info/TEMPLATE_lambda.csv
    touch ./res/repos-info/TEMPLATE_namespace.csv
    touch ./res/repos-info/TEMPLATE_macroconcat.csv
    touch ./res/repos-info/CONCURRENCY_thread_local.csv
    touch ./res/repos-info/CONCURRENCY_votatile.csv
    touch ./res/repos-info/MEMORY_destructor.csv
    touch ./res/repos-info/MEMORY_smartptr.csv
    touch ./res/repos-info/MEMORY_directinit.csv
    touch ./res/repos-info/EXCEPTION_trycatch.csv
    touch ./res/repos-info/EXCEPTION_noexcept.csv
    touch ./res/repos-info/POLYMORPHISM_nestedclass.csv
    touch ./res/repos-info/POLYMORPHISM_operator.csv
    touch ./res/repos-info/POLYMORPHISM_virtual_overload.csv
    touch ./res/repos-info/POLYMORPHISM_castconvert.csv
    touch ./res/repos-info/REFERENCE_friend.csv
    touch ./res/repos-info/REFERENCE_this.csv
    touch ./res/repos-info/REFERENCE_using.csv
    touch ./res/repos-info/FUNCTION_variparams.csv
    touch ./res/repos-info/TYPESYS_typedef.csv
    touch ./res/repos-info/TYPESYS_union.csv
    touch ./res/repos-info/TYPESYS_decltype.csv
    touch ./res/repos-info/TYPESYS_using.csv
    touch ./res/repos-info/TYPESYS_constexpr.csv
fi

TOTAL_FILE_NUM=0

while IFS= read -r -d '' file; do
  if [[ $file =~ \.(c|cc|cpp|cxx|h|hpp|hxx)$ ]]; then
    ((TOTAL_FILE_NUM++))
  fi
done < <(find "$SRC_DIR_PATH" -type f -print0)

while IFS= read -r -d '' file; do
  if [[ $file =~ \.(c|cc|cpp|cxx|h|hpp|hxx)$ ]]; then
    # show progress
    echo "Processing $file, (with $((--TOTAL_FILE_NUM)) files left)"
    echo "./test-file.sh $DEBUG_MODE $STORE_FEATURE_TABLE $STORE_DETAILED_INFO -f $file"
    ./test-file.sh $DEBUG_MODE $STORE_FEATURE_TABLE $STORE_DETAILED_INFO -f $file
  fi
done < <(find "$SRC_DIR_PATH" -type f -print0)