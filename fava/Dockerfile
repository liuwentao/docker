FROM python:alpine as builder
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple 
#RUN pip3 config set install.trusted-host nexus.lottery-dev.com

RUN apk add --update libxml2-dev libxslt-dev gcc musl-dev g++
RUN pip install --prefix="/install" fava

FROM python:alpine

COPY --from=builder /install /usr/local

ENV BEANCOUNT_FILE ""
ENV FAVA_OPTIONS ""
EXPOSE 5000
CMD fava --host 0.0.0.0 $FAVA_OPTIONS $BEANCOUNT_FILE
