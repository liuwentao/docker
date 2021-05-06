FROM python:alpine as builder
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple 
#RUN pip3 config set install.trusted-host nexus.lottery-dev.com

RUN apk add --update libxml2-dev libxslt-dev gcc musl-dev g++
RUN pip install --prefix="/install" fava

FROM python:alpine
MAINTAINER liuwentao@gmail.com
ENV BEANCOUNT_FILE "/app/main.bean"

COPY --from=builder /install /usr/local

RUN \
echo "https://mirrors.cloud.tencent.com/alpine/v3.11/main/" > /etc/apk/repositories && \
echo "https://mirrors.cloud.tencent.com/alpine/v3.13/community/" >> /etc/apk/repositories && \
apk add --no-cache --verbose tzdata shadow && \
echo 'Asia/Shanghai' >/etc/timezone && \
useradd -u 666 -U -d /config -s /bin/false abc && \
usermod -G users abc && \
rm -rf /var/cache/apk/* && \
rm -rf /tmp/* &&  \
rm -rf /etc/apk/repositories

EXPOSE 5000
VOLUME [ "/app" ]
WORKDIR /app
COPY entrypoint.sh /entrypoint.sh



# CMD fava --host 0.0.0.0 $BEANCOUNT_FILE
RUN chmod +x /entrypoint.sh
CMD [ "/entrypoint.sh" ]