FROM openjdk:8-jre
CMD ["sbt","dist"]
RUN ["chown", "-R", "daemon:daemon", "."]
USER daemon
