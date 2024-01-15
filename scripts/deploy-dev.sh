#!/bin/bash

set -euo pipefail

PATH_TO_KUSTOMIZATION=$1

kubectl create --save-config namespace ethereum 

kubectl --namespace ethereum create secret generic engine-jwt-secret --from-literal=jwt_secret="$(sh scripts/generate-jwt.sh)"

sh scripts/deploy.sh "$PATH_TO_KUSTOMIZATION"