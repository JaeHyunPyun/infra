FROM openjdk:17-jdk-slim
WORKDIR /app

COPY build/libs/*SNAPSHOT.jar app.jar

CMD ["java", "-jar", "app.jar"]
