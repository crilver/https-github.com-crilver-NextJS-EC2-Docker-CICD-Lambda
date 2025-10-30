# Use an official Node.js image from Docker Hub
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all the project files into the container
COPY . .

# Build the Next.js app for production
RUN npm run build

# Expose the port that Next.js runs on
EXPOSE 3000

# Start the app
CMD ["npm", "start"]