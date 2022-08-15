FROM arm64v8/alpine:latest

RUN apk add --no-cache --update ca-certificates bash openssh-client rsync
COPY upload.sh /usr/local/

ENTRYPOINT ["/usr/local/upload.sh"]
