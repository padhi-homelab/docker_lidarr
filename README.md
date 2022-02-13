# docker_lidarr <a href='https://github.com/padhi-homelab/docker_lidarr/actions?query=workflow%3A%22Docker+CI+Release%22'><img align='right' src='https://img.shields.io/github/workflow/status/padhi-homelab/docker_lidarr/Docker%20CI%20Release?logo=github&logoWidth=24&style=flat-square'></img></a>

<a href='https://hub.docker.com/r/padhihomelab/lidarr'><img src='https://img.shields.io/docker/image-size/padhihomelab/lidarr/latest?label=size%20%5Blatest%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>
<a href='https://hub.docker.com/r/padhihomelab/lidarr'><img src='https://img.shields.io/docker/image-size/padhihomelab/lidarr/testing?label=size%20%5Btesting%5D&logo=docker&logoWidth=24&style=for-the-badge'></img></a>

A multiarch [Lidarr] Docker image, based on [Alpine Linux].

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

Usage with [Docker Compose] is similarly straightforward.
<br>
As an example, you can see my configuration in [services/trackarr].


[Alpine Linux]:      https://alpinelinux.org/
[Docker Compose]:    https://docs.docker.com/compose/
[Lidarr]:            https://lidarr.audio/
[services/trackarr]: https://github.com/padhi-homelab/services/tree/master/trackarr
