FROM golang:1.10-stretch

RUN mkdir -p /go/app
COPY . /go/app/
WORKDIR /go/app
RUN go get ./...  
RUN go build
EXPOSE 6666
CMD  /go/app/irc-slack
