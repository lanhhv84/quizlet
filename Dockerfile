FROM ubuntu:bionic-20191202
FROM node:13.5.0-alpine3.11

ENV PATH /app/node_modules/.bin:$PATH
RUN mkdir -p /app
WORKDIR /app
COPY package*.json /app
RUN yarn install

CMD ["yarn", "start"]
