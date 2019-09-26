# Podman Guide

```
# Rationale

# Docker Cons
- Docker runs as a daemon, this creates a certain amount of overhead
- To build a container image, Docker requires to have root access, this creates security risks E.g. (docker run --privileged)

# Podman Pros
- Podman's daemon-less architecture is much more flexible and secure
- Doesn't require a daemon to run containers.
- It runs unprivileged containers in a much more secure way than docker.
```

# Basics
```shell
podman -v 
podman info
podman search nextcloud
podman pull docker.io/library/nextcloud

podman ps		-- List of running containers
podman images	-- List of images
podman run -it container /bin/bash	-- Interactive mode

# Running -d deattached -p 8080 on the container
podman -d -p 8080:80 nextcloud

# Pushing images to quay.io
podman login quay.io -u username
podman push myimage:podman quay.io/username/image:podman

# Check container registries
cat /etc/containers/registries.conf
```

# Buildah
```shell
# Build images
FROM registry.redhat.io/rhel8-beta/rhel
ADD helloworld /usr/local/bin/helloworld
CMD "/usr/local/bin/helloworld"

buildah bud -t helloworld .

podman run helloworld

podman run -it helloworld /bin/bash
```
