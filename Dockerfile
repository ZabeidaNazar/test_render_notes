
FROM gradle:jdk21 AS build
WORKDIR /b
COPY . /b
RUN gradle clean bootJar

FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY --from=build b/build/libs/notes-0.0.1-SNAPSHOT.jar demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","demo.jar"]