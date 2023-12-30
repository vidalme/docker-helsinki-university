#based on a node image
FROM ubuntu:latest

WORKDIR /app

RUN apt update && apt install -y ca-certificates curl gnupg
RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# installing node 16, it must be 16 otherwise it wont work
ENV NODE_MAJOR=16
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list
RUN apt update && apt install nodejs -y

# dependencies
COPY package* .
RUN npm install

# variables to connect with the backend
ENV REACT_APP_BACKEND_URL=http://localhost:8080/

#npm run build

# just for docs
EXPOSE 5000

# build app
COPY . .
RUN npm run build

# exposing the directory where the built app is
RUN npm install -g serve
ENTRYPOINT serve -s -l 5000 ./build
