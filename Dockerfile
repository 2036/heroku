FROM alpine:3.8

ADD caddy.sh /caddy.sh
ADD caddy /caddy

RUN chmod +x /caddy.sh
RUN chmod +x /caddy

CMD /caddy.sh
