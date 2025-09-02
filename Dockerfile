# Use Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json first and install deps
COPY package*.json ./
RUN npm install --production

# Copy rest of the code
COPY . .

# Expose backend port (8000 since app runs there)
EXPOSE 8000

# Run the app
CMD ["npm", "run", "dev"]
