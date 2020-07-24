# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v2.16.8

RUN curl -sL https://storage.googleapis.com/kubernetes-helm/helm-${VERSION}-linux-amd64.tar.gz | tar xvz && \
    mv linux-amd64/helm /usr/local/bin/helm

VOLUME /root/.helm

ENTRYPOINT ["bash"]
