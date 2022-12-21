#!/bin/sh -l

curl -sS \
  "$INPUT_ENDPOINT" \
  -F api_key="$INPUT_API_KEY" \
  -F deploy[environment]="$INPUT_ENVIRONMENT" \
  -F deploy[local_username]="$GITHUB_ACTOR" \
  -F deploy[revision]="${INPUT_REVISION:-$GITHUB_SHA}" \
  -F deploy[repository]="git@github.com:${INPUT_REPOSITORY:-$GITHUB_REPOSITORY}.git"
