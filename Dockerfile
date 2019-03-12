FROM openjdk:8-jre-slim-stretch


COPY target/my-app2-1.0-SNAPSHOT.jar .

CMD java -jar /my-app2-1.0-SNAPSHOT.jar
