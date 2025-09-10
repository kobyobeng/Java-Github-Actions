#FROM openjdk:8-jre-alpine

#EXPOSE 8080

#COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
#WORKDIR /usr/app

#ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]

FROM openjdk:8-jre-alpine

EXPOSE 8080

# Copy the JAR into the container and rename it to app.jar
COPY build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/app.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "app.jar"]
