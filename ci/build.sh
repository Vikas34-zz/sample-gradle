#!/usr/bin/env bash

set -ex
cd sample-gradle

./gradlew build

echo "Printing sonar token: " $sonar_token

./gradlew sonarqube \
  -Dsonar.projectKey=test \
  -Dsonar.host.url=https://devstack.vwgroup.com/sonar \
  -Dsonar.login=$sonar_token

#cp ./build/libs/rest-service-0.0.1-SNAPSHOT.jar ../sonarqube-analysis-input/latest.jar
#cp ./build/libs/rest-service-0.0.1-SNAPSHOT.jar ../sonarqube-analysis-input/latest.jar
