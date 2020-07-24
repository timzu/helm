# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v2.16.9

RUN curl -sL https://storage.googleapis.com/kubernetes-helm/helm-${VERSION}-linux-amd64.tar.gz | tar xvzf && \
    mv linux-amd64/helm /usr/local/bin/helm

VOLUME /root/.helm

ENTRYPOINT ["bash"]
