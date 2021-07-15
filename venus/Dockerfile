FROM golang:alpine as builder 
WORKDIR /go/src/github.com/stanleynguyen/hello-universe
RUN apk update && apk upgrade
COPY . .
RUN GOOS=linux go build -o venus/app ./venus

FROM alpine:latest 
RUN apk update && apk upgrade 
RUN apk --no-cache add ca-certificates
WORKDIR /root/
COPY ./venus/kodata/ .
COPY --from=builder /go/src/github.com/stanleynguyen/hello-universe/venus/app .
EXPOSE ${PORT}
CMD ["./app"]