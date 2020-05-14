FROM maven:3.6-jdk-8 AS builder
COPY ?????????
WORKDIR /app
RUN mvn package spring-boot:repackage
FROM openjdk:8-jdk-alpine
EXPOSE 9000
VOLUME /tmp
ARG LIBS=app/build/libs
COPY --from=builder ${LIBS}/RestaurantWeb*.jar /app/lib/RestaurantWeb.jar
ENTRYPOINT ["java","-jar","./app/lib/RestaurantWeb.jar"]
