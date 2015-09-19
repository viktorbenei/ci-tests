#!/bin/bash
set -e
set -v

bash ./install_bitrise_cli.sh

export CI="true"

bitrise run primary
