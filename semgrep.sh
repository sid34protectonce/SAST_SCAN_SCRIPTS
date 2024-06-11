#!/bin/bash

# Create the directory if it doesn't exist
mkdir -p semgrep

# Define an array of configurations
configs=(
  "jwt"
  "gosec"
  "comment"
  "cwe-top-25"
  "default"
  "owasp-top-ten"
  "r2c-security-audit"
  "nodejs"
  "insecure-transport"
  "dockerfile"
  "xss"
  "react"
  "kubernetes"
  "docker-compose"
  "terraform"
  "flawfinder"
  "c"
  "findsecbugs"
  "security-code-scan"
  "gitleaks"
)

# Loop through each config and run semgrep
for config in "${configs[@]}"; do
  semgrep --config "p/$config" > "semgrep/${config}.txt"
done

echo "All scans are completed and saved in the semgrep directory."
