# A Go image is overkill for this playground example, but Go is my favorite language.
FROM golang:1.20 AS playbuild
WORKDIR /playspace
# Make a directory and put some files in it.
RUN mkdir playdir && touch playdir/first.file && touch playdir/second.file

FROM scratch as playcopy
# If I knew how to do a copy from the playbuild buildstage, I would've.
# However, I can't seem to use the --from flag on COPY within the stage I want to copy files from.
# Therefore, I put this command in its own stage, the Docker-provided `scratch` container.
# The first argument, `playspace/playdir` copies that directory and its content from the `playbuild` stage.
# The second argument, `.` indicates the files should point to the docker context, in this case, that is where the Docker file is.
# When running `docker build`, an `--output` flag will be specified as to where in the docker context these copied files should be dumped.
COPY --from=playbuild playspace/playdir/ .
