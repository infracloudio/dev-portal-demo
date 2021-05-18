#!/bin/bash

export AUTH_GOOGLE_CLIENT_SECRET=$(gcloud secrets versions access 1 --secret=BACKSTAGE_GOOGLE_CLIENT_SECRET)
export AUTH_GOOGLE_CLIENT_ID=$(gcloud secrets versions access 1 --secret=BACKSTAGE_GOOGLE_CLIENT_ID)
export AUTH_GITHUB_CLIENT_ID=$(gcloud secrets versions access 1 --secret=BACKSTAGE_GITHUB_CLIENT_ID)
export AUTH_GITHUB_CLIENT_SECRET=$(gcloud secrets versions access 1 --secret=BACKSTAGE_GITHUB_CLIENT_SECRET)
export GITHUB_TOKEN=$(gcloud secrets versions access 1 --secret=BACKSTAGE_GITHUB_ACCESS_TOKEN)
gcloud secrets versions access 1 --secret=BACKSTAGE_KUBERNETES_KEY_JSON | jq '.'  > ~/k8s-key.json
export GOOGLE_APPLICATION_CREDENTIALS=~/k8s-key.json
export GOOGLE_PROJECT_ID=$(gcloud secrets versions access 1 --secret=BACKSTAGE_PROJECT_ID)
export GKE_REGION=$(gcloud secrets versions access 1 --secret=BACKSTAGE_GKE_REGION)
