# Step 1: Use an official Node.js image as the base image
FROM node:16

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy package.json and package-lock.json (if any)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the app files into the container
COPY . .

# Step 6: Expose port to access the app
EXPOSE 3000

# Step 7: Run the application
CMD ["npm", "start"]