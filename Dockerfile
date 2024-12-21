# Use Node.js base image
FROM node:18-slim

ENV NODE_ENV=production

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . ./

# Expose the port the Hapi server runs on
EXPOSE 8000

# Define the command to run the application
CMD ["npm", "start"]
