#!/bin/bash
set -x

env

pwd

ls -alh

tree -L 2 /

tree -L 2 "$HOME"

which brew
brew install tree
