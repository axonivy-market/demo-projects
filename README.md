# Ivy demo projects

This repository contains multiple demos how to use the Axon.ivy platform.

- **connectivity-demos**: How to build and consume Rest or Soap services
- **error-handling-demos**: How to handle errors 
- **html-dialog-demos**: How to build dialogs and use [PrimeFaces](https://www.primefaces.org) widgets
- **workflow-demos**: How to build complexer workflow processes

- **quick-start-tutorial**: Quick jump in our platform
- **demos-app**: Collects all Demos to one deployable app


## Test

Requirements *(web integration tests)*:

- Firefox
- Maven *(terminal)*

To run the tests import a project into your Axon.ivy Designer or open a terminal, 
navigate to a project and run:

```console
mvn clean verify
```

If you want to know more about testing checkout our documentation chapter: [Testing](https://developer.axonivy.com/doc/dev/concepts/testing.html)


## increase version
[Increase version job](build.maven/job/update-version/README.md)
