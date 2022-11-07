# Rule Engine Demo
Axon Ivy's Rule Engine Demo emphasizes the importance of separating business
logic from process logic. A business rule typically changes more often than the
process model and also has a different target audience. Thanks to the integrated
business rule engine, this is a no-brainer with Axon Ivy. The solution:
 
- showcases the use of different rule definition standards such as DMN, DRL
  files and Microsoft Excel decision table integration
- includes a ready-to-copy example featuring adjustable thresholds for business
  users

Learn more about the [rule engine](https://developer.axonivy.com/doc/9/designer-guide/how-to/rule-engine.html)
in our documentation.

## Demo

![Rule Engine Demo 1](screen1.png "Rule Engine Demo 1")
![Rule Engine Demo 2](screen2.png "Rule Engine Demo 2")

## Setup

In order to get full Design-Time support, such as auto-completion for DRL conditions, please configure all projects in your workspace to use Java 11.

To do so:
1. Right click on your project and select `Properties` in the context menu. 
1. Select `Java Compiler` on the left side and set `Compiler compliance level`to `11`
1. Select `Project Facets` on the left side and set the facet `Java` to version `11`.
1. Apply and Close the Properties dialog.