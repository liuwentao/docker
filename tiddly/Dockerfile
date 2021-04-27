FROM node:lts-alpine3.13
MAINTAINER liuwentao@gmail.com
ENV MIRROR=https://mirrors.cloud.tencent.com/alpine

RUN \
echo "https://mirrors.cloud.tencent.com/alpine/v3.11/main/" > /etc/apk/repositories && \
echo "https://mirrors.cloud.tencent.com/alpine/v3.13/community/" >> /etc/apk/repositories && \
apk add shadow && \
# groupmod -g 1000 users && \
useradd -u 666 -U -d /config -s /bin/false abc && \
usermod -G users abc && \
npm install -g tiddlywiki@5.1.23 --registry=https://registry.npm.taobao.org

 
EXPOSE 8080
VOLUME [ "/app" ]
WORKDIR /app
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh
CMD [ "/entrypoint.sh" ]
