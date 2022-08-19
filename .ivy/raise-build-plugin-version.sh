#!/bin/bash

mvn --batch-mode versions:set-property versions:commit -Dproperty=project-build-plugin -DnewVersion=${2} -DprocessAllModules -DallowSnapshots=true
