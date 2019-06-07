FROM selenium/standalone-firefox:3.10.0

RUN \
    sudo apt-get -y update && \
    sudo apt-get install -y maven \
    sudo apt-get install -y openjdk-11-jre-headless