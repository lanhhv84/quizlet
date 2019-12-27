FROM circleci/node:10-jessie-browsers

USER root
ENV PATH /home/circleci/node_modules/.bin:$PATH
RUN mkdir -p /home/circleci
WORKDIR /home/circleci
COPY package*.json /home/circleci
RUN yarn install

CMD ["yarn", "start"]
