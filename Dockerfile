FROM golang:1.10-stretch
WORKDIR /go/src
RUN git clone https://github.com/JohnCashmore/irc-slack.git
WORKDIR /go/src/irc-slack
RUN go get ./...
RUN go build
EXPOSE 6666
CMD  /go/src/irc-slack/irc-slack
