#!/bin/sh
# Make sure you have Docker installed on your computer.
# The `--target` flag is the build stage that will be run.
# The `--output` flag is the directory in which files will be copied. It will be created if it doesn't exist.
# The `--progress=plain` output will give more details on the output of each layer command.
docker build . -f Dockerfile --target playcopy --output sandbox --progress=plain
