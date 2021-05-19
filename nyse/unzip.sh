#!/usr/bin/env bash
SCRIPT=$(readlink -f "$0")
DIR=$(dirname "${SCRIPT}")
DIR=$(realpath --relative-to=. "$DIR")
IFS=$'\n\t'
set -euxo pipefail

INPUT_DIR=/home/marek/Development/trading/h-nyse-daily/resources/all-archives
OUTPUT_DIR=$DIR/../nyse-data

for FILE in "${INPUT_DIR}"/NYSE_????.zip
do
  echo "$FILE"
  #unzip "$FILE" -d "$OUTPUT_DIR"
done

cat "$OUTPUT_DIR"/NYSE_*.csv > ./all.csv