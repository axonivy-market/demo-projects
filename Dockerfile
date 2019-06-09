FROM selenium/standalone-firefox:3.10.0

RUN \
    sudo apt-get -y update && \
    sudo apt-get install -y maven

RUN \
    sudo add-apt-repository -y ppa:linuxuprising/java && \
    sudo apt-get update -y && \
    sudo apt-get install -y oracle-java11-installer && \
    sudo apt-get install -y oracle-java11-set-default