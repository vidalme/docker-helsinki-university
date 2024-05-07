FROM ubuntu

# intalling curl and build-essential (used to compile C files with go, otherwise there is a bug)
RUN apt update && apt install curl build-essential -y

WORKDIR /app

# download a specific version of go, had to dig it in the website
RUN curl -o go1.16.15.linux-amd64.tar.gz https://dl.google.com/go/go1.16.15.linux-amd64.tar.gz
RUN rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.15.linux-amd64.tar.gz

# remove installer
RUN rm go1.16.15.linux-amd64.tar.gz

COPY . .
ENV PATH=$PATH:/usr/local/go/bin
ENV REQUEST_ORIGIN=http://localhost:5000
ENV REDIS_HOST=redis

#ENV POSTGRES_HOST=5432 
#ENV POSTGRES_USER=postgres
#ENV POSTGRES_PASSWORD=postgres
#ENV POSTGRES_DATABASE=postgres

# just for docs
EXPOSE 8080

# build it
RUN go build

# test it
RUN go test ./...

# run it
ENTRYPOINT ./server