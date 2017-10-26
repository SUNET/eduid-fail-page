FROM docker.sunet.se/library/simple-fail-page:latest

MAINTAINER eduid-dev <eduid-dev@segate.sunet.se>

COPY index.html /opt/simple-fail-page/index.html
COPY eduid-fail-page.yaml /opt/simple-fail-page/simple-fail-page.yaml
COPY assets/ /opt/simple-fail-page/assets/

VOLUME ["/opt/simple-fail-page"]

WORKDIR /opt/simple-fail-page
CMD /usr/local/sbin/simple-fail-page
