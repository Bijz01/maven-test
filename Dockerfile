FROM java:8
ARG workdir=/app
VOLUME ${workdir}
WORKDIR ${workdir}
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
EXPOSE 8899
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
ENTRYPOINT ["java", "-Xmx512m", "-jar", "app.jar"]
