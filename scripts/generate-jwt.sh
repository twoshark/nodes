#!/bin/bash

set -euo pipefail

jwt=$(openssl rand -hex 32 | tr -d "\n")

echo "$jwt"
