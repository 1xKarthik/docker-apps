FROM golang:alpine AS builder
RUN apk update && apk add --no-cache git
WORKDIR /go/src
COPY app.go .
RUN go get -d -v golang.org/x/net/html
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .
FROM alpine:3.7
WORKDIR /root/
COPY --from=builder /go/src/app .
ENTRYPOINT ["./app"]