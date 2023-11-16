FROM alpine:latest AS builder

WORKDIR /opt

ADD build.sh /opt/build.sh
RUN apk add git cmake make g++ && sh /opt/build.sh

FROM alpine:latest AS runner

COPY --from=builder /usr/local/lib64/libredwg.so /usr/local/lib64/libredwg.so
COPY --from=builder /usr/local/include/dwg.h /usr/local/include/dwg.h
COPY --from=builder /usr/local/include/dwg_api.h /usr/local/include/dwg_api.h
COPY --from=builder /usr/local/bin/dwgread /usr/local/bin/dwgread
COPY --from=builder /usr/local/bin/dwg2dxf /usr/local/bin/dwg2dxf
COPY --from=builder /usr/local/bin/dwggrep /usr/local/bin/dwggrep
COPY --from=builder /usr/local/bin/dwglayers /usr/local/bin/dwglayers
COPY --from=builder /usr/local/bin/dwgbmp /usr/local/bin/dwgbmp
COPY --from=builder /usr/local/bin/dwg2SVG /usr/local/bin/dwg2SVG
COPY --from=builder /usr/local/bin/dwgrewrite /usr/local/bin/dwgrewrite
COPY --from=builder /usr/local/bin/dwgwrite /usr/local/bin/dwgwrite
COPY --from=builder /usr/local/bin/dxf2dwg /usr/local/bin/dxf2dwg
