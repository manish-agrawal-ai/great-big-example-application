FROM maven:3.6.0-jdk-11-slim AS build  
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app
RUN apt-get update && apt-get -y install rsync
RUN mvn -f /usr/src/app/pom.xml clean package
