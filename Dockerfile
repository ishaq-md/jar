#FROM openjdk:12-alpine
#RUN mkdir -p test
#COPY ./target/TEST-0.0.1-SNAPSHOT.jar /test/TEST-0.0.1-SNAPSHOT.jar
#CMD ["java","-jar", "/test/TEST-0.0.1-SNAPSHOT.jar"]

FROM ubuntu:20.04
RUN apt-get update && apt-get install -y curl apt-transport-https ca-certificates gnupg
RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
RUN apt-get update && apt-get install -y google-cloud-sdk
RUN apt-get install -y git
RUN install -y default-jdk
RUN export JAVA_HOME=/usr
RUN mkdir -p test
COPY ./target/TEST-0.0.1-SNAPSHOT.jar /test/TEST-0.0.1-SNAPSHOT.jar
CMD ["java","-jar", "/test/TEST-0.0.1-SNAPSHOT.jar"]
