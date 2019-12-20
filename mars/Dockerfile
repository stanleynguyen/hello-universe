FROM golang:alpine as builder 
WORKDIR /go/src/github.com/stanleynguyen/hello-universe/mars
RUN apk update && apk upgrade
COPY . .
RUN GOOS=linux go build -o app .

FROM alpine:latest 
RUN apk update && apk upgrade 
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY --from=builder /go/src/github.com/stanleynguyen/hello-universe/mars/app .
EXPOSE ${PORT}
CMD ["./app"]