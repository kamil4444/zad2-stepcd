FROM alpine:latest
WORKDIR /
RUN apk -U --no-cache upgrade \
    && apk add --no-cache git curl

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x ./kubectl \
	&& mv ./kubectl /usr/bin/kubectl
