# Maven Build..
FROM maven:3.8.4-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package

#Tomcat deployment
FROM tomcat:9.0-jdk11-openjdk
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/

