# Start from the ubuntu image
FROM ubuntu:20.04

#update and install curl
RUN apt update && apt install curl -y

# Use app as the root of our commands.
WORKDIR /app

# Copy script to the image 
COPY ./wutsite.sh .

# Make it executable
RUN chmod +x wutsite.sh

# When running 'docker run' the command CMD will be ran (it is not in the image perse)
CMD ./wutsite.sh
