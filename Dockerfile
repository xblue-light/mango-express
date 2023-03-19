FROM node:19-alpine

# COPY <src> on our machine <dest> in the container
# Please note the ending slash in /app/ is important creates the folder if it does NOT exist.
COPY package.json /app/
COPY src /app/

# Sets the working directory for all following commands
WORKDIR /app

RUN npm install 

# The instruction that is to be executed when a Docker container starts
CMD ["node", "index.js"]


