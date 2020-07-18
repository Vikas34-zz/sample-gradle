#!/usr/bin/env bash

set -ex
./gradlew build test

mkdir "sonarqube-analysis-input"
cp build/libs/rest-service-0.0.1-SNAPSHOT.jar sonarqube-analysis-input/latest.jar
