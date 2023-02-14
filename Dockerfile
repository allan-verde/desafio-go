# FROM golang:alpine3.16
FROM golang:latest

WORKDIR /usr/src/app

RUN go mod init example/hello

COPY hello.go .

FROM scratch

WORKDIR /app

COPY hello .

ENTRYPOINT [ "./hello"]