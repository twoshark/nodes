#!/bin/bash

set -euo pipefail

CLUSTER=$1

kind delete cluster --name "$CLUSTER"