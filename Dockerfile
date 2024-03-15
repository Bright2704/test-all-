# Use a more recent LTS Node.js version (replace 18 with the desired LTS version)
FROM node:18-lts-alpine

# Set the working directory
WORKDIR /app

# Copy essential files first (avoid copying unnecessary files)
COPY package*.json ./

# Install dependencies based on package.json
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port
EXPOSE 3000

# Start the Next.js development server
CMD [ "npm", "run", "dev" ]  # Use "npm run build" for production
