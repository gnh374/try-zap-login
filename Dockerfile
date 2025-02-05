# Step 1: Build the React app
FROM node:18 AS build

# Set the working directory inside the container
WORKDIR /app

# Clear npm cache
RUN npm cache clean --force

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY . .

# Build the React app for production
RUN npm run build
