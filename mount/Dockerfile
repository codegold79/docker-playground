# A Go image is overkill for this playground example, but Go is my favorite language.
FROM golang:1.20
# The bind mount type is the default, and doesn't need to be specified, but I did so for express clarity here.
# I added the rw (readwrite) option so I can change the files within the Docker build stage.
# Changes I make here are only in the Docker container and does not affect the files in the local machine (host machine/Docker context).
RUN --mount=type=bind,rw ls -al && \
    printf ",z" >> load-and-change/incomplete.txt && \
    mv load-and-change/incomplete.txt load-and-change/complete.txt && \
    printf " 7" >> load-and-change/count.txt && \
    ls -al && \
    printf "\ncontents of complete.txt: " && cat load-and-change/complete.txt && \
    printf "\ncontents of count.txt: " && cat load-and-change/count.txt

# This is an incomplete Dockerfile. It doesn't do anything and has no ENTRYPOINT.
# All this does is demonstrate how --mount can bring in files you can use to help
# in the build stages.
