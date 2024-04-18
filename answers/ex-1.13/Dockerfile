FROM golang:1.16.12
WORKDIR /app
COPY . .
RUN go build
ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://192.168.100.8:5000
RUN go test ./...
EXPOSE 8080
ENTRYPOINT ./server