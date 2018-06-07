RUN ["chown", "-R", "daemon:daemon", "."]
CMD ["sbt","dist"]
