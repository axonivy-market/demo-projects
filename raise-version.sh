#!/bin/bash

mvn -f build.maven/raise-version/pom.xml versions:set versions:commit -DnewVersion=${1} -DprocessAllModules
