#!/bin/bash

set -xeu

subPath=$1
image_ids=$(gh api "/orgs/sebatec-eu/packages/container/${subPath}-devcontainer/versions" -H "Accept: application/vnd.github.packages-preview+json" -q '.[] | select(.metadata.container.tags|length==0) | {id: .id, tags: .metadata.container.tags|length} | .id')

for id in ${image_ids:-}; do
    gh api "/orgs/sebatec-eu/packages/container/${subPath}-devcontainer/versions/$id" --method DELETE -H "Accept: application/vnd.github+json"
done
