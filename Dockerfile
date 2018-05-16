FROM selenium/standalone-firefox:3.10.0

RUN \
    sudo apt-get update && \
    sudo apt-get install -y openjdk-8-jdk && \
    sudo apt-get install -y maven && \
    sudo apt-get update
	

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
