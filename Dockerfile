# base image
FROM node:14-alpine

# set working directory
WORKDIR /app

# copy all files to the working directory
COPY . .

# set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# install dependencies & build
RUN npm install --production --unsafe-perm && npm run build

# start the app
CMD ["npm", "start"]

# expose port
EXPOSE 8080