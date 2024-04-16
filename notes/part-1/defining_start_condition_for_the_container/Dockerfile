# Start from the ubuntu image
FROM ubuntu:20.04

#update and install curl
RUN apt update && apt install curl -y

# Use app as the root of our commands.
WORKDIR /app

# Copy script to the image 
COPY ./script.sh .

# Make it executable
RUN chmod +x script.sh

# When running 'docker run' the command CMD will be ran (it is not in the image perse)
ENTRYPOINT ./script.sh

CMD ['helsinki.fi']
