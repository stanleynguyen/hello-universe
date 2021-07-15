FROM golang:alpine as builder 
WORKDIR /go/src/github.com/stanleynguyen/hello-universe
RUN apk update && apk upgrade
COPY . .
RUN GOOS=linux go build -o jupiter/app ./jupiter

FROM alpine:latest 
RUN apk update && apk upgrade 
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY ./jupiter/kodata/ .
COPY --from=builder /go/src/github.com/stanleynguyen/hello-universe/jupiter/app .
EXPOSE ${PORT}
CMD ["./app"]