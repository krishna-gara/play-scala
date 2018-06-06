set -x && unzip -d svc target/universal/*-1.0-SNAPSHOT.zip && mv svc/*/* svc/ && rm svc/bin/*.bat && mv svc/bin/* svc/bin/start
COPY svc /svc
EXPOSE 9000 9443
CMD /svc/bin/start -Dhttps.port=9443 -Dplay.crypto.secret=secret
