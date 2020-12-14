FROM alpine:3.8

ADD caddy.sh /tmp/caddy.sh
ADD caddy /caddy

RUN chmod +x /tmp/caddy.sh
RUN chmod +x /caddy

CMD /tmp/caddy.sh
