FROM maven:3.6.3-jdk-11

RUN addgroup --gid 1000 build && adduser --uid 1000 --gid 1000 --disabled-password --gecos "" build

# libswt-gtk: swt native libraries
# libwebkit2gtk: swt browser native libraries
# xvfb: virtual frame buffer to run swt tests
RUN apt-get -qqy update && \
    apt-get -qqy install libswt-gtk-4-java \
                         libwebkit2gtk-4.0-37 \
                         xvfb && \
    rm -rf /var/lib/apt/lists/*

ENV DISPLAY :99

COPY docker-entrypoint.sh /opt/bin/
RUN chmod +x /opt/bin/docker-entrypoint.sh

ENTRYPOINT ["/opt/bin/docker-entrypoint.sh"]
