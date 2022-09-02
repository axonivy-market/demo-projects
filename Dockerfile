FROM maven:3.8.6-eclipse-temurin-17

RUN mvn --version

# add an user with 1000 for the build in jenkins
RUN addgroup --gid 1000 build && adduser --uid 1000 --gid 1000 --disabled-password --gecos "" build

