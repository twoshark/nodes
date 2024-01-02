#!/bin/bash

set -euo pipefail

CLUSTER=$1

kind create cluster --name "$CLUSTER"
