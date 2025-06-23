# Use Node.js official image
FROM node:16-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app source
COPY . .

# Make the bin scripts executable
RUN chmod +x bin/*

#removed secrets

# Expose the app's listening port
EXPOSE 3000

# Start the application
CMD ["node", "src/000.js"]

