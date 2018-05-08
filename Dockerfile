FROM selenium/standalone-firefox:3.5.3

RUN sudo apt-get -y update && sudo apt-get -y install maven
