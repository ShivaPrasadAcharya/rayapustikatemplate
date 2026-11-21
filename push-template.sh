#!/usr/bin/env bash
# Creates github.com/ShivaPrasadAcharya/rayapustikatemplate and marks it as a template.
# Requires the GitHub CLI (https://cli.github.com) logged in: gh auth login
set -e
git init -b main
git config user.name "ShivaPrasadAcharya"
git config user.email "shivaprasadacharya000000000000@gmail.com"
git add -A
git commit -m "Initial rayapustika template"
gh repo create ShivaPrasadAcharya/rayapustikatemplate --public --source=. --remote=origin --push \
  --description "Template for rayapustikaN searchable file catalogues"
gh repo edit ShivaPrasadAcharya/rayapustikatemplate --template
echo "Done: https://github.com/ShivaPrasadAcharya/rayapustikatemplate"
