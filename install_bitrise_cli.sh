#!/bin/bash
set -e
set -v

curl -fL https://github.com/bitrise-io/bitrise/releases/download/1.1.1/bitrise-$(uname -s)-$(uname -m) > /usr/local/bin/bitrise
chmod +x /usr/local/bin/bitrise
bitrise setup --minimal
