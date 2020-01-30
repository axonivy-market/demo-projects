# Ivy demo projects

This repository contains multiple demos how to use the Axon.ivy platform.

- **ConnectivityDemos**: How to build and consume Rest or Soap services
- **ErrorHandlingDemos**: How to handle errors 
- **HtmlDialogDemos**: How to build dialogs and use [PrimeFaces](https://www.primefaces.org) widgets
- **WorkflowDemos**: How to build complexer workflow processes

- **QuickStartTutorial**: Quick jump in our platform
- **DemosApp**: Collects all Demos to one deployable app

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


#### increase version
[Increase version job](build.maven/job/update-version/README.md)
