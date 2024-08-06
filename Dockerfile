FROM alpine

RUN apk add --no-cache --update \
      nginx \
      rsync \
  && rm -f \
      /etc/rsyncd.conf \
      /etc/nginx/http.d/default.conf


EXPOSE 873 80 443
VOLUME /data
VOLUME /conf
ADD ./run /usr/local/bin/run

ENTRYPOINT ["/usr/local/bin/run"]
