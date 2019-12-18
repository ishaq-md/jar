FROM openjdk:12-alpine
COPY ./target/dockerDemo-0.0.1-SNAPSHOT.jar /dockerDemo-0.0.1-SNAPSHOT.jar
CMD ["java","-jar", "/dockerDemo-0.0.1-SNAPSHOT.jar"]
