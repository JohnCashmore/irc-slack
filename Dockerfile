FROM 1.10-alpine

RUN mkdir -p /app
COPY . /app/
WORKDIR /app
RUN go get ./...  
RUN go build
EXPOSE 6666
CMD  /app/irc-slack
