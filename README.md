# Inspec Usermode

# Why?
Because Inspec container built by Chef is running as a root user inside the container. If you try to use the container for local development purposes, you'll find that it'll create the files on your local machine as `root` which is something just plain annoying.

Also I was using this on my local machine and didn't want to lose the dockerfile, so here it is :)

# How?
Just use:
```bash
$ make build
```
And it will build a new image tagged with `inspec-usermode:latest`. You can create a function in bash to use this container:
```bash
$ function inspec { docker run -it --rm -v $(pwd):/share inspec-usermode "$@" --chef-license=accept-silent; }
```
