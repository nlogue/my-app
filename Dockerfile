FROM openjdk

USER root
RUN apt-get update
RUN apt-get install maven -y


VOLUME /jenkins_home/workspace/my-app
WORKDIR /jenkins_home/workspace/my-app

COPY /target/my-app-1.0-SNAPSHOT.jar .
CMD java -jar my-app-1.0-SNAPSHOT.jar
