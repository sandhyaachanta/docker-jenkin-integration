FROM openjdk:8-jdk-alpine
MAINTAINER sandhya
RUN mkdir /usr/app
COPY target/docker-jenkins-integration.jar /usr/app
RUN sh -c 'touch docker-jenkins-integration.jar'
ENTRYPOINT ["java","-jar","docker-jenkins-integration.jar"]