FROM node:16-alpine

WORKDIR /src

ADD . /src

RUN yarn install --production

EXPOSE 1337

CMD [ "yarn" ,"start" ]
