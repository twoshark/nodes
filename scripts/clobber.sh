#!/bin/bash

set -euo pipefail

NAMESPACE=$1

kubectl delete namespace "$NAMESPACE"