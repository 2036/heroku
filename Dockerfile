FROM alpine:3.8

ADD caddy.sh /usr/local/etc/caddy/caddy.sh
ADD caddy /caddy

RUN chmod +x /usr/local/etc/caddy/caddy.sh
RUN chmod +x /caddy

CMD /usr/local/etc/caddy/caddy.sh
