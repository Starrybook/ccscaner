#!/bin/bash
# untested yet
# this file will be rewritten after most functions of ccscaner have been implemented

repo=""
debug=0
target=""
info=""

while (( "$#" )); do
  case "$1" in
    -r|--repo)
      shift
      repo="$1"
      shift
      ;;
    -d|--debug)
      shift
      debug="$1"
      shift
      ;;
    -t|--target)
      shift
      target="$1"
      shift
      ;;
    -i|--info)
      shift
      info="$1"
      shift
      ;;
    *)
      echo "Error: Invalid argument"
      exit 1
      ;;
  esac
done

if [ -z "$repo" ] || [ ! -d "$repo" ]; then
  echo "Error: Invalid repository path"
  exit 1
fi

if [ -n "$target" ]; then
  mkdir -p "$target"
  target_file="$target/$(repo)-$(date +%d%H%M).csv"
  touch "$target_file"
fi

if [ -n "$info" ]; then
  mkdir -p "$info"
  info_dir="$info/$(repo)-$(date +%d%H%M)"
  mkdir -p "$info_dir"
fi

for file in $(find "$repo" -type f \( -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.cxx" -o -name "*.h" -o -name "*.hpp" -o -name "*.hxx" \)); do
  echo "Scanning file: $file"
  python3 ./simple-scanner.py $file $debug $target_file $info_dir
done

echo "Analysing..."
python3 ./simple-analyser.py $target_file $debug $info_dir

echo "Done."
