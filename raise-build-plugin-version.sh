#!/bin/bash

mvn --batch-mode versions:set-property versions:commit -Dproperty=project.build.plugin.version -DnewVersion=${2} -DprocessAllModules -DallowSnapshots=true
