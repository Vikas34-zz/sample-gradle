#!/usr/bin/env bash

set -ex
cd sample-gradle
./gradlew build test

cp ./build/libs/rest-service-0.0.1-SNAPSHOT.jar ../sonarqube-analysis-input/latest.jar
