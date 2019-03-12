FROM openjdk

VOLUME /jenkins_home/workspace/my-app
WORKDIR /jenkins_home/workspace/my-app

COPY /target/my-app-1.0-SNAPSHOT.jar .
CMD java -jar my-app-1.0-SNAPSHOT.jar && sh 'sudo push nl0gue/jenkins-app:latest'
