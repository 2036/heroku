FROM alpine:3.8

ADD start.sh /start.sh
ADD caddy /caddy

RUN chmod +x /start.sh
RUN chmod +x /caddy

CMD /start.sh
