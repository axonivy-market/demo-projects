#!/bin/bash

mvn versions:set versions:commit -DnewVersion=${1} -DprocessAllModules
