#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_root"

zip_path="cryptova---global-crypto-intelligence.zip"
out_dir="${1:-cryptova}"

if [[ ! -f "$zip_path" ]]; then
  echo "ERROR: Zip file not found: $zip_path"
  exit 1
fi

rm -rf "$out_dir"
mkdir -p "$out_dir"
unzip -o "$zip_path" -d "$out_dir"

echo "Extracted CRYPTOVA project to: $repo_root/$out_dir"
