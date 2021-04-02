FROM node:alpine

WORKDIR /app
COPY ./package.json /app
COPY ./package-lock.json /app
RUN npm i
COPY ./ /app
ARG SERVICE_URL
ENV SERVICE_URL=${SERVICE_URL}
RUN SERVICE_URL=${SERVICE_URL} npm run generate
CMD npm start
