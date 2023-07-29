FROM openjdk:17-alpine
VOLUME /tmp
EXPOSE 8080
ADD build/libs/users-0.0.1-SNAPSHOT.jar users.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/users.jar"]