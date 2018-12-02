FROM alpine:3.8
MAINTAINER Florian Schwab <me@ydkn.de>

# update system
RUN apk --no-cache --no-progress upgrade

# install BIND
RUN apk --no-cache --no-progress add bind

# create default config
RUN cp /etc/bind/named.conf.recursive /etc/bind/named.conf

# volumes
VOLUME ["/etc/bind"]

# default command
CMD ["/usr/sbin/named", "-g"]

# ports
EXPOSE 53 53/udp
