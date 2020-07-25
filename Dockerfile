# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v3.2.3

RUN curl -sL https://storage.googleapis.com/kubernetes-helm/helm-${VERSION}-linux-amd64.tar.gz | tar xvz && \
    mv linux-amd64/helm /usr/local/bin/helm

VOLUME /root/.helm

ENTRYPOINT ["bash"]
