FROM openjdk

VOLUME /jenkins_home/workspace/my-app
WORKDIR /jenkins_home/workspace/my-app

COPY HelloWorldTest.class .
CMD java HelloWorldTest
