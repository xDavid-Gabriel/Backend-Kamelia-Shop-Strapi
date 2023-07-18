FROM node:16-alpine

WORKDIR /src

COPY . /src

RUN yarn install --production

ENV NODE_ENV=production

RUN yarn build

EXPOSE 1337

CMD ["yarn", "start"]
