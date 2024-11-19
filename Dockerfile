# syntax=docker/dockerfile:1.4

# Usar a imagem do openjdk 17 para ARM64 (Mac con M1, M2, M3, etc)
#FROM --platform=linux/arm64 openjdk:17-jdk-slim

FROM openjdk:17-jdk-slim
VOLUME /tmp
COPY target/consumer-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
