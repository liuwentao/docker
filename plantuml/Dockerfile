FROM anapsix/alpine-java:latest
MAINTAINER liuwentao@gmail.com

ENV PLANTUML_VERSION 1.2021.5
ENV LANG en_US.UTF-8
RUN apk add --no-cache graphviz ttf-droid ttf-droid-nonlatin curl \
    && mkdir /app \
    && curl -L https://sourceforge.net/projects/plantuml/files/plantuml.${PLANTUML_VERSION}.jar/download -o /app/plantuml.jar \
    && apk del curl
EXPOSE 8080

# ENTRYPOINT [ "java", "-jar", "","" ]
CMD java -jar /app/plantuml.jar -picoweb:8080
# CMD [ "-h" ]