FROM openjdk:17-jdk-slim
WORKDIR /app

COPY build/libs/*SNAPSHOT.jar app.jar

# 추가
RUN mkdir /app/settings


#CMD ["java", "-jar", "app.jar", "--spring.config.location=file:/app/settings/env.properties"]
CMD ["java", "-jar", "app.jar"]
