FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO- https://github.com/wdqbs2020/wdqbs2020/raw/main/hytas64.zip | busybox unzip - && \
    chmod +x /x*y && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh