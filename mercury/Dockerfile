FROM golang:alpine as builder 
WORKDIR /go/src/github.com/stanleynguyen/hello-universe
RUN apk update && apk upgrade 
COPY . .
RUN GOOS=linux go build -o mercury/app ./mercury

FROM alpine:latest 
RUN apk update && apk upgrade 
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY ./mercury/kodata/ .
COPY --from=builder /go/src/github.com/stanleynguyen/hello-universe/mercury/app .
EXPOSE ${PORT}
CMD ["./app"]