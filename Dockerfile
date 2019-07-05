FROM selenium/standalone-firefox:3.141

RUN \
    sudo apt-get -y update && \
    sudo apt-get install -y maven

RUN \
    sudo apt-get install -y openjdk-11-jre-headless