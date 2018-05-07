FROM selenium/standalone-firefox:3.4.0-dysprosium

RUN sudo apt-get -y update && sudo apt-get -y install maven
