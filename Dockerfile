FROM openjdk:8-jdk-alpine

WORKDIR /app
COPY ./build/libs/challenge-0.0.1-SNAPSHOT.jar /app/challenge-0.0.1-SNAPSHOT.jar
EXPOSE 8080

ENTRYPOINT [ "java", "-Xms256m", "-Xmx512m", "-jar", "/app/challenge-0.0.1-SNAPSHOT.jar" ]
