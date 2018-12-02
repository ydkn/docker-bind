# Docker image for BIND

## Get configuration from image

```bash
docker create ydkn/bind:latest
docker cp $(docker ps -ql):/etc/bind .
docker rm $(docker ps -ql)
```

## Start the container

```bash
docker run -d --restart always --net=host -v $(pwd)/bind:/etc/bind ydkn/bind:latest
```
