FROM node:lts-alpine3.13
MAINTAINER liuwentao@gmail.com

RUN npm install -g tiddlywiki@5.1.23 --registry=https://registry.npm.taobao.org
EXPOSE 8080

VOLUME [ "/app" ]
WORKDIR /app
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
CMD [ "/entrypoint.sh" ]
