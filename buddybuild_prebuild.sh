#!/bin/bash
THIS_SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
set -x

bash "${THIS_SCRIPT_DIR}/test-script.sh"

cat $HOME/BBCupertinoTools/*

echo "Dont fail"
