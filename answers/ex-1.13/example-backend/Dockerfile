FROM golang:1.16.12
WORKDIR /app
COPY . .
RUN go build

ENV PATH=$PATH:/usr/local/go/bin

ENV REQUEST_ORIGIN=http://192.168.100.8:5000
ENV REDIS_HOST=redis_se

# ENV POSTGRES_HOST=postgres
# ENV POSTGRES_USER=postgres 
# ENV POSTGRES_PASSWORD=postgres
# ENV POSTGRES_DATABASE=postgres

RUN go test ./...
EXPOSE 8080

ENTRYPOINT ./server