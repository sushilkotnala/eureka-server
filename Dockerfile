FROM openjdk:11
ARG JAR_FILE=target/eureka-server.jar

COPY ${JAR_FILE} app.jar
EXPOSE 8090:8090

ENTRYPOINT ["java","-jar","/app.jar"]
