#!/bin/bash
THIS_FILE=$(readlink -f "$0")
THIS_DIR=$(dirname "${THIS_FILE}")
IFS=$'\n\t'
set -euox pipefail
Q=/home/marek/Development/kdb/kdb4/l64/q
pushd "${THIS_DIR}"


$Q main.q -p 5001
