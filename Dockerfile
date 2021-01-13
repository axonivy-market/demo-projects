FROM selenium/standalone-firefox:3

USER root

RUN apt-get -qqy update \
  && apt-get -qqy install openjdk-11-jdk maven \
  && rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /opt/docker-entrypoint.sh
RUN chmod +x /opt/docker-entrypoint.sh

# add an user with 1000 for the build in jenkins
RUN addgroup --gid 1000 build && adduser --uid 1000 --gid 1000 --disabled-password --gecos "" build

USER seluser
ENTRYPOINT ["/opt/docker-entrypoint.sh"]
