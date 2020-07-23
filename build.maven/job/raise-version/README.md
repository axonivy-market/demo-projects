# Raise version

1. Execute `mvn clean process-resources -Dnew-version=9.1.0 -f build.maven/job/raise-version/pom.xml`
2. Update the `ivy.projects.version` in the core repository `maven/config/dependencies/pom.xml`
