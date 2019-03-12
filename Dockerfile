FROM openjdk


COPY /target/*.jar .

CMD java -jar *.jar
