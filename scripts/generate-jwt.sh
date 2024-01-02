#!/bin/bash

set -euo pipefail

# Function to encode in Base64 URL encoding
base64url() {
    openssl enc -base64 -A | tr '+/' '-_' | tr -d '='
}

# Generate a private key
openssl ecparam -genkey -name secp256k1 -out private-key.pem

# Calculate expiration timestamp (1 day from now)
expiration_timestamp=$(( $(date +%s) + 86400 ))

# Create a JSON file with JWT claims
cat <<EOF > payload.json
{
  "iat": $(date +%s),
  "exp": $expiration_timestamp,
  "sub": "ethereum-node"
}
EOF

# Encode the header and payload
header=$(echo -n '{"alg":"ES256","typ":"JWT"}' | base64url)
payload=$(< payload.json base64url)

# Create the signature
signature=$(echo -n "$header.$payload" | openssl dgst -sha256 -sign private-key.pem -keyform PEM | base64url)

# Combine the header, payload, and signature
jwt="$header.$payload.$signature"

echo "$jwt"

# Clean up: Remove the private key and payload file
rm private-key.pem payload.json