FROM sonarqube:5.6.7-alpine

RUN apk --no-cache add --repository http://dl-4.alpinelinux.org/alpine/v3.6/community curl ca-certificates && \
  cd /opt/sonarqube/extensions/plugins && \
  curl -s -O -L https://github.com/Sagacify/sonar-scala/releases/download/v0.0.3/sonar-scala-plugin-0.0.3.jar && \
  curl -s -O -L https://github.com/arthepsy/sonar-scala-extra/releases/download/v1.3.0/sonar-scapegoat-plugin-1.3.0.jar && \
  chown sonarqube.sonarqube *

