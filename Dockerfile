FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v3.4.2

RUN curl -sL https://get.helm.sh/helm-${VERSION}-linux-amd64.tar.gz| tar xz && \
    mv linux-amd64/helm /usr/local/bin/helm

VOLUME /root/.helm

ENTRYPOINT ["bash"]