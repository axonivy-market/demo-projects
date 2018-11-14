# ivy projects

## test

to run test, firefox in version 58 is required. if you don't want to install firefox in version 58. just run a container based on the `Dockerfile` and execute the tests.

## increase version
1. Execute the following command in the root folder:

```
mvn clean process-resources -Dnew.ivy.version=<NEW-VERSION> -f build.maven/job/update-version/pom.xml
```
2. Commit Changes
3. Start the build
4. Increase the `ivy.projects.version` in the trunk: `build.maven/config/dependencies/pom.xml`
