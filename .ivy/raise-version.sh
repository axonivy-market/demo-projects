#!/bin/bash

mvn --batch-mode versions:set versions:commit -DnewVersion=${1} -DprocessAllModules
