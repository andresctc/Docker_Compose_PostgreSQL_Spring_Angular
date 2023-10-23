FROM openjdk:17-jdk-alpine
COPY target/dockerized.postgresql-0.0.1-SNAPSHOT.jar java-app.jar
ENTRYPOINT ["java", "-Dspring.profiles.active=docker", "-jar", "java-app.jar"]
EXPOSE 8080