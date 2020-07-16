FROM java:8
ARG workdir=/app
VOLUME ${workdir}
WORKDIR ${workdir}
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
EXPOSE 8899
ENTRYPOINT ["java", "-Xmx512m", "-jar", "app.jar", ">> /log/app/app.log"]
