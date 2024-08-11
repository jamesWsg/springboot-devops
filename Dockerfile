# 使用 OpenJDK 基础镜像来运行你的应用
FROM openjdk:17-jdk-slim

WORKDIR /app

# this is hardcode name of jar, should improve
COPY target/springboot-helloworld-0.0.1-SNAPSHOT.jar /app

EXPOSE 8686

CMD ["java", "-jar", "/app/springboot-helloworld-0.0.1-SNAPSHOT.jar"]
