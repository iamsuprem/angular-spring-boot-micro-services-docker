FROM openjdk:11
ENV SPRING_BOOT_VER @version@
VOLUME /tmp
VOLUME /var/log/spring-boot
VOLUME /data
ADD  spring-boot*.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8081
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dlog_dir=/var/log/spring-boot/","-Dhome.dir=/data","-Dserver.port=80","-jar","/app.jar"]
