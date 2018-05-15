# ivy Projects

## increase version
1. In the root folder of the Repo, execute: `mvn clean process-resources -Dnew.ivy.version=<NEW-VERSION> -f build.maven/job/update-version/pom.xml`
2. Commit Changes
3. Start the ivy projects build
4. increase the `ivy.projects.version` in the trunk: build.maven/config/dependencies/pom.xml
