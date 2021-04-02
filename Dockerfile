FROM node:alpine

WORKDIR /apep
COPY ./package.json /app
COPY ./package-lock.json /app
RUN npm i
COPY ./ /app
CMD node index.js
