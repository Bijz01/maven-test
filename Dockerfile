FROM java:8
ARG JAR_FILE
ADD target/${JAR_FILE} app.jar
EXPOSE 8899
ENTRYPOINT ["java", "-jar", "/app.jar"]
