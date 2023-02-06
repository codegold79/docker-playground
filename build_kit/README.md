# Docker BuildKit

## BuildKit brief introduction

From the Docker Manuals,

> BuildKit is an improved backend to replace the legacy builder. It comes with new and much improved functionality for improving your builds’ performance and the reusability of your Dockerfiles.

## BuildKit --output feature

For my first try at one of BuildKit's features, I tried the `--output` flag to the `docker build` command.
This flag allows you to make a bunch of files through a Dockerfile's build stages and dump the generated files into your local machine.
You will be able to see these newly built files in the same place as where you put your Dockerfile (i.e. the most typical Docker context).

Here are the docs for the `--output` flag: https://docs.docker.com/engine/reference/commandline/build/#output

Take a look at the Dockerfile and feel free to run it by running the `tryme.sh` script.

If successful, you should see a directory called `sandbox` created and within it two new files, `first.file` and `second.file`.

## My environment

I'm using darwin/amd64, Docker version 20.10.12.
