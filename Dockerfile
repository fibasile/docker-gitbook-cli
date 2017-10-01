# specify the node base image with your desired version node:<version>
FROM node:4.2.2
RUN apt-get update && apt-get install -y \
    calibre \
    && rm -rf /var/lib/apt/lists/*
RUN npm install gitbook-cli -g 
RUN gitbook fetch latest

