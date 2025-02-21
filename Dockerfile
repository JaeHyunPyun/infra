FROM openjdk:17-jdk-slim
WORKDIR /app

COPY build/libs/*SNAPSHOT.jar app.jar

# 추가
RUN mkdir /app/settings

# 추가
CMD ["java", "-Dspring.config.location=file:/app/settings/env.properties","-jar", "app.jar"]


#CMD ["java", "-jar", "app.jar"]