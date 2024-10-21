FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock before the rest to leverage caching
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the app source code
COPY . .

# Expose the port the app will run on
EXPOSE 3000

# Start the application
CMD ["yarn", "start"]
