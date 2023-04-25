FROM ubuntu:latest
ADD target/spring-boot-rest-example-0.5.0.war
WORKDIR /opt/sBoot
EXPOSE 8091
EXPOSE 8090
CMD java -jar -Dspring.profiles.active=test target/spring-boot-rest-example-0.5.0.war
