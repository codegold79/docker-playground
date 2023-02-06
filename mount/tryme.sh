#!/bin/sh
# Make sure you have Docker installed on your computer.
# The `--progress=plain` output will give more details on the output of each layer command.
docker build . -f Dockerfile --progress=plain
