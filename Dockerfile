FROM openjdk:11
EXPOSE 8080
ADD project-ws/target/project-ws.jar final.jar
ENTRYPOINT [ "java", "-jar", "final.jar" ]