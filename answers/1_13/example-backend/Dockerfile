FROM golang:1.16.12
WORKDIR /app
COPY . .
RUN go build

ENV PATH=$PATH:/usr/local/go/bin

RUN go test ./...
EXPOSE 8080

ENTRYPOINT ./server