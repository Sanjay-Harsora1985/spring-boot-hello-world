FROM maven:3.5-jdk-8-alpine AS build

MAINTAINER sharsora1985@gmail.com

COPY src /home/app/src
COPY pom.xml /home/app

#RUN mvn -f /home/app/pom.xml clean package

EXPOSE 8082

ENTRYPOINT ["java", "-jar", "/home/app/target/spring-boot-hello-world-0.0.1-SNAPSHOT.jar"]
