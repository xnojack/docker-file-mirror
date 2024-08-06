# docker-file-mirror

Container for file mirror via HTTP and rsync. Weekly build is done to update base container.

## Usage

```
docker run -d \
  -p 10873:873 \
  -p 8080:80 \
  -v $PWD/data:/data \
  xnojack/file-mirror
```

## Restricting access

In default, rsync and http accepts all connections. You can override via the environment variable `ALLOW`.

```sh
docker run -d -p 10873:873 -e ALLOW='10.0.0.0/8 x.x.x.x/y' xnojack/file-mirror
```

## Origin
- Forked from `bebehei/mirror-docker` to update the container.
- Forked from `nabeken/docker-volume-container-rsync` with additions for nginx.
