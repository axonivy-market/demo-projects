#!/bin/bash

mvn --batch-mode versions:set-property versions:commit -Dproperty=web.tester.version -DnewVersion=${1} -DprocessAllModules
