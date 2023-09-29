FROM openjdk:8u212-jdk-alpine

# ENV DRIVER_URL https://repo1.maven.org/maven2/org/postgresql/postgresql/42.2.22/postgresql-42.2.22.jar
ENV APP_URL https://github.com/schemaspy/schemaspy/releases/download/v6.1.0/schemaspy-6.1.0.jar

WORKDIR /

COPY ./schemaspy.properties .

RUN apk --update add graphviz ttf-dejavu && \
    apk --update add --virtual .builddep tzdata wget libressl && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    # wget -O postgresql-connector-java.jar ${DRIVER_URL} && \
    wget -O schemaspy.jar ${APP_URL} && \
    apk del .builddep && \
    rm -rf /var/cache/apk/*
