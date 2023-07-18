FROM node:16-alphine

WORKDIR /src

ADD . /src

RUN yarn install --production

EXPOSE 1337

CMD [ "yarn" ,"start" ]
