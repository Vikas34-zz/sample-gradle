#!/usr/bin/env bash

set -ex
cd sample-gradle
#./gradlew build test

echo $sonar_token
#./gradlew sonarqube \
#  -Dsonar.projectKey=test \
#  -Dsonar.host.url=https://devstack.vwgroup.com/sonar \
#  -Dsonar.login=62cebc63d4b0ccab22da7459c32d49452e593ed7

cp ./build/libs/rest-service-0.0.1-SNAPSHOT.jar ../sonarqube-analysis-input/latest.jar
#cp ./build/libs/rest-service-0.0.1-SNAPSHOT.jar ../sonarqube-analysis-input/latest.jar
