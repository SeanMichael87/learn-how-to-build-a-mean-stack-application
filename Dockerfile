# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
COPY package*.json ./

RUN npm install

#Bundle app source
COPY . .

# Expose port outside container
EXPOSE 3000

# Start application
CMD npm run start