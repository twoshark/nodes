#/bin/bash

set -euo pipefail

PATH_TO_KUSTOMIZATION=$1

kubectl kustomize $PATH_TO_KUSTOMIZATION --enable-helm | kubectl apply -f -