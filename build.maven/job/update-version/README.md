# increase version

0. Use Java 1.8 (11 does not run):
   `export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64`
1. Execute the command to define the new version. Be aware the `-SNAPSHOT` is not required. So just use a version like `8.0.0` with the following command in the root folder:
   `mvn clean process-resources -Dnew.ivy.version=<NEW-VERSION> -f build.maven/job/update-version/pom.xml`
2. Commit Changes
3. Start the build
4. Increase the `ivy.projects.version` in the trunk: `build.maven/config/dependencies/pom.xml`
