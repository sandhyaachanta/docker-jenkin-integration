FROM openjdk:8-jdk-alpine
WORKDIR /app 
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD ["./mvnw", "spring-boot:run"]
#RUN addgroup -S spring && adduser -S spring -G spring
#WORKDIR #
#USER spring:spring
#ARG JAR_FILE=target/*.jar
#RUN echo "Hello"
#Run echo ${JAR_FILE}
#COPY ${JAR_FILE} app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]