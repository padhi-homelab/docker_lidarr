# docker_lidarr

[![build status](https://img.shields.io/github/actions/workflow/status/padhi-homelab/docker_lidarr/docker-release.yml?label=BUILD&branch=main&logo=github&logoWidth=24&style=flat-square)](https://github.com/padhi-homelab/docker_lidarr/actions?query=workflow%3A%22Docker+CI+Release%22)
[![testing size](https://img.shields.io/docker/image-size/padhihomelab/lidarr/testing?label=SIZE%20%5Btesting%5D&logo=docker&logoColor=skyblue&logoWidth=24&style=flat-square)](https://hub.docker.com/r/padhihomelab/lidarr/tags)
[![latest size](https://img.shields.io/docker/image-size/padhihomelab/lidarr/latest?label=SIZE%20%5Blatest%5D&logo=docker&logoColor=skyblue&logoWidth=24&style=flat-square)](https://hub.docker.com/r/padhihomelab/lidarr/tags)
  
[![latest version](https://img.shields.io/docker/v/padhihomelab/lidarr/latest?label=LATEST&logo=linux-containers&logoWidth=20&labelColor=darkmagenta&color=gold&style=for-the-badge)](https://hub.docker.com/r/padhihomelab/lidarr/tags)
[![image pulls](https://img.shields.io/docker/pulls/padhihomelab/lidarr?label=PULLS&logo=data:image/svg%2bxml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPHN2ZyB3aWR0aD0iODAwcHgiIGhlaWdodD0iODAwcHgiIHZpZXdCb3g9IjAgMCAzMiAzMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICA8ZyBmaWxsPSIjZmZmIj4KICAgIDxwYXRoIGQ9Ik0yMC41ODcsMTQuNjEzLDE4LDE3LjI0NlY5Ljk4QTEuOTc5LDEuOTc5LDAsMCwwLDE2LjAyLDhoLS4wNEExLjk3OSwxLjk3OSwwLDAsMCwxNCw5Ljk4djYuOTYzbC0uMjYtLjA0Mi0yLjI0OC0yLjIyN2EyLjA5MSwyLjA5MSwwLDAsMC0yLjY1Ny0uMjkzQTEuOTczLDEuOTczLDAsMCwwLDguNTgsMTcuNGw2LjA3NCw2LjAxNmEyLjAxNywyLjAxNywwLDAsMCwyLjgzMywwbDUuOTM0LTZhMS45NywxLjk3LDAsMCwwLDAtMi44MDZBMi4wMTYsMi4wMTYsMCwwLDAsMjAuNTg3LDE0LjYxM1oiLz4KICAgIDxwYXRoIGQ9Ik0xNiwwQTE2LDE2LDAsMSwwLDMyLDE2LDE2LDE2LDAsMCwwLDE2LDBabTAsMjhBMTIsMTIsMCwxLDEsMjgsMTYsMTIuMDEzLDEyLjAxMywwLDAsMSwxNiwyOFoiLz4KICA8L2c+Cjwvc3ZnPgo=&logoWidth=20&labelColor=teal&color=gold&style=for-the-badge)](https://hub.docker.com/r/padhihomelab/lidarr)

---

An [Alpine]-based multiarch [Lidarr] Docker image.

Supported platforms:

|           386            |       amd64        |          arm/v6          |          arm/v7          |       arm64        |         ppc64le          |          s390x           |
| :----------------------: | :----------------: | :----------------------: | :----------------------: | :----------------: | :----------------------: | :----------------------: |
| :heavy_multiplication_x: | :heavy_check_mark: | :heavy_multiplication_x: | :heavy_check_mark: | :heavy_check_mark: | :heavy_multiplication_x: | :heavy_multiplication_x: |

## Usage

### With Docker

```sh
docker run -p 8686:8686 \
           -e DOCKER_UID=`id -u` \
           -v /path/to/store/configs:/configs \
           -v /path/to/client/downloads:/downloads \
           -v /path/to/library/for/music:/music \
           -it padhihomelab/lidarr
```

Runs Lidarr with WebUI served on port 8686.
<br>
To run it in background, use the `--detach` flag.

Usage with [`docker compose`][docker compose] is similarly straightforward.
<br>
As an example, you can see my configuration in [services/monitarr].


[Alpine]:            https://alpinelinux.org/
[docker compose]:    https://docs.docker.com/compose/
[Lidarr]:            https://lidarr.audio/
[services/monitarr]: https://github.com/padhi-homelab/services/tree/master/monitarr
