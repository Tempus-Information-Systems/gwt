#!/usr/bin/env bash

# https://console.cloud.google.com/artifacts/maven/tempus-k8s-prod/europe-north1/tempus-maven

export MAVEN_BIN="mvn -s settings.xml"
export GCP_SA_KEY="$(cat tempus-k8s-prod-a67045426387.json)"
export GWT_MAVEN_REPO_URL=https://europe-north1-maven.pkg.dev/tempus-k8s-prod/tempus-maven/
export GWT_MAVEN_REPO_ID=artifact-registry

./push-gwtproject.sh
