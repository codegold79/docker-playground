# Dockerfile RUN --mount

## Intro and References

Within a Dockerfile stage, you can mount files from the Docker context into your Docker container using the `--mount` flag.
There are many ways to use `--mount` as described by the docs: https://docs.docker.com/engine/reference/builder/#run---mount

For this playground experiment, I made some files in my Docker context (in my case, it's where I put my Dockerfile).
I pulled them in via RUN --mount, made some changes, and showed the changes.
These changes did not affect the local files in my Docker context.
To get the changes transferred over, refer to my other playground experiment in `build-kit` where I use `--output` to copy over files from a Dockerfile build stage to the local machine.

Note: I don't think you can save anything built in a mount for use in a different stage.
In order to use files prepared in a mount in another stage, copy over files while in the --mount line to a directory, like `/bin`.
The contents in the `/bin` directly will be preserved to be copied over in a different stage.

## Try it

Run the tryme./sh script.
You can see in the termnal output how the files in load-and-change were loaded into a Docker container and modified.
The local files remain untouched.
