#!/usr/bin/env bash
set -e
mkdir -p models
BASE="https://raw.githubusercontent.com/justadudewhohacks/face-api.js/master/weights"

echo "Downloading model files to ./models ..."

files=( \
  "ssd_mobilenetv1_model-weights_manifest.json" \
  "ssd_mobilenetv1_model-shard1" \
  "ssd_mobilenetv1_model-shard2" \
  "face_landmark_68_model-weights_manifest.json" \
  "face_landmark_68_model-shard1" \
  "face_recognition_model-weights_manifest.json" \
  "face_recognition_model-shard1" \
)

for f in "${files[@]}"; do
  url="${BASE}/${f}"
  echo "Fetching $url ..."
  # try curl or wget
  if command -v curl >/dev/null 2>&1; then
    curl -L -o "models/${f}" "$url" || { echo "Failed to download $f"; exit 1; }
  else
    wget -O "models/${f}" "$url" || { echo "Failed to download $f"; exit 1; }
  fi
done

echo "Done. Models saved in ./models"
