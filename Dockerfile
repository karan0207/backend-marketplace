# FROM node:17-alpine

# # Set the working directory in the container
# WORKDIR /app/backend

# # Copy package.json and package-lock.json to container
# COPY package*.json ./

# # Install backend dependencies
# RUN npm install

# # Copy the rest of your backend application to the container
# COPY . .

# # Expose the port your backend app runs on
# EXPOSE 5000


# ENV PORT=5000
# ENV MONGO_URI="mongodb+srv://karanchandel0202k:Karanyoyo2@chatapp.2d0hqbq.mongodb.net/"
# ENV NODE_ENV=development
# ENV JWT_SECRET='abac12afsdkjladf'

# # Command to run your backend app
# CMD ["npm", "run","backend"]






# Use the official Node.js image as a base
FROM node:17-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install backend dependencies
RUN npm install

# Copy the rest of your backend application code to the container
COPY . .

# Expose the port your backend app runs on
EXPOSE 5000

# Set environment variables (if needed)
# ENV MONGODB_URI="your-mongodb-uri"
ENV MONGO_URI="mongodb+srv://karanchandel0202k:Karanyoyo2@chatapp.2d0hqbq.mongodb.net/"
ENV NODE_ENV=development
ENV JWT_SECRET='abac12afsdkjladf'

# Command to run your backend app
CMD ["npm", "run", "backend"]