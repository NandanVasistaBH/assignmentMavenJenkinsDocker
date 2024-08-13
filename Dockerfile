FROM openjdk:8
EXPOSE 8080
COPY target/assignment-*.jar /assignment-maven.jar
CMD ["java","-jar","/assignment-maven.jar"]