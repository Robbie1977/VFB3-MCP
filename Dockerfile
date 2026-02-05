# Use Node.js 18 Alpine as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm ci --only=production

# Copy built application
COPY dist/ ./dist/

# Expose port if needed (though MCP uses stdio, might need HTTP for some clients)
# EXPOSE 3000

# Run the application
CMD ["npm", "start"]