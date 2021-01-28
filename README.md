## Purpose

This container image is the base [Debian](http://www.debian.org) image used
as the parent image for other Berkeley Identity Management Suite container
images.

The author does not currently publish the image in any public container
repository but a script, described below, is provided to easily create your
own image.

## License

The source code, which in this project is primarily shell scripts and the
Dockerfile, is licensed under the [BSD two-clause license](LICENSE.txt).

## Building the container image

Build the container image:
```
./buildImage.sh
```

## Running

This base image is meant to be the parent image for other BIDMS images and
is generally not meant to be run directly, but running it directly is useful
if you want to make changes to the base image and want to see your changes.

To run the container interactively (which means you get a shell prompt):
```
./runContainer.sh
```

(All `docker` commands can be replaced with `podman` if you prefer.)

You can exit the container by exiting the bash shell or use `docker stop
bidms-debian-base`.

To inspect the running container from the host:
```
docker inspect bidms-debian-base
```

To list the running containers on the host:
```
docker ps
```
