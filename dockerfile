# Use a lightweight Node.js base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only package files to leverage Docker cache
COPY package*.json ./

# Install only production dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port your app listens on
EXPOSE 80

# Start the application
CMD ["npm", "start"]