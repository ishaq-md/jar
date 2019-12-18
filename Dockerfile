FROM openjdk:12-alpine
COPY ./target/TEST-0.0.1-SNAPSHOT.jar /TEST-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java","-jar", "/TEST-0.0.1-SNAPSHOT.jar"]
