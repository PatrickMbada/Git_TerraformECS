FROM node:19.6

WORKDIR /app

# Copy package.json from the correct path
COPY app/package*.json ./

# Install dependencies
RUN npm install

# Copy all application files
COPY app/. .  

CMD ["node", "index.js"]
