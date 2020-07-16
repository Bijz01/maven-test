FROM java:8
ARG workdir=/app
VOLUME ${workdir}
WORKDIR ${workdir}
ARG JAR_FILE
ADD ${JAR_FILE} app.jar
EXPOSE 8899
ENTRYPOINT ["java", "-jar", "-Xmx512m", "app.jar"]
