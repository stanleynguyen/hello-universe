FROM golang:alpine as builder 
WORKDIR /go/src/github.com/stanleynguyen/hello-universe
RUN apk update && apk upgrade
COPY . .
RUN GOOS=linux go build -o earth/app ./earth

FROM alpine:latest 
RUN apk update && apk upgrade 
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY ./earth/kodata/ .
COPY --from=builder /go/src/github.com/stanleynguyen/hello-universe/earth/app .
EXPOSE ${PORT}
CMD ["./app"]