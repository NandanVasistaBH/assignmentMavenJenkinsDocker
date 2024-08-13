FROM openjdk:8
EXPOSE 8080
add target/assignment-maven.jar assignment-maven.jar
ENTRYPOINT ["java","-jar","/assignment-maven.jar"]