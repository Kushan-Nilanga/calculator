# dockerfile for calculator using nodejs
# typescript files must be build and packaged 

FROM node:18-alpine

# Create app directory
WORKDIR /app

COPY . /app

RUN npm install

COPY ./ /app

EXPOSE 3000
CMD [ "npm", "start" ]