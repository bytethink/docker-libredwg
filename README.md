# Docker LibreDWG

- Source: <https://www.gnu.org/software/libredwg/>
- GitHub: <https://github.com/cornking2020/docker-libredwg>

Files:

```text
/usr/local/lib/libredwg.so
/usr/local/include/dwg.h
/usr/local/include/dwg_api.h
/usr/local/bin/dwgread
/usr/local/bin/dwg2dxf
/usr/local/bin/dwggrep
/usr/local/bin/dwglayers
/usr/local/bin/dwgbmp
/usr/local/bin/dwg2SVG
/usr/local/bin/dwgrewrite
/usr/local/bin/dwgwrite
/usr/local/bin/dxf2dwg
```

## Build

Build docker image with multiple platforms:

```shell
docker buildx build --no-cache --platform linux/amd64,linux/arm64,linux/arm/v7,linux/ppc64le,linux/s390x -t docker.io/kuzoncby/libredwg:latest --push .

```
