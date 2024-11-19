# FROM bellsoft/liberica-openjdk-alpine:17
FROM cepgbaseacr.azurecr.io/docker.io/openjdk:17-slim

WORKDIR /app

COPY target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","/app.jar"]
