FROM node:16.20.2-bullseye-slim
RUN apt update && apt upgrade -y
WORKDIR /app
COPY package.json .
RUN npm install
COPY . . 
# ENV REACT_APP_BACKEND_URL $REACT_APP_BACKEND_URL 
ENV REACT_APP_BACKEND_URL http://localhost/api
RUN npm run build
RUN npm install -g serve
EXPOSE 5000

CMD ["serve", "-s" ,"-l", "5000", "build"]
