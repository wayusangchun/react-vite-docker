# Pull the base image
FROM node:20.15.0-alpine

# Set the working directory
WORKDIR /usr/app

# Copy app dependencies to container
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy code from host to container
COPY . .

# Expose Post
EXPOSE 5173

# Deploy app for local development
CMD [ "npm","run","dev" ]