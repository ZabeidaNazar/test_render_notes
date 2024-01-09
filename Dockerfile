
#FROM gradle:jdk21


FROM eclipse-temurin:21-jdk
WORKDIR /app
COPY . /app
RUN /app/gradlew clean bootJar
#VOLUME /tmp
#COPY /build/libs/notes-0.0.1-SNAPSHOT.jar demo.jar
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","./build/libs/notes-0.0.1-SNAPSHOT.jar"]