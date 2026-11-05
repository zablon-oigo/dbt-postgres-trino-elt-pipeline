#!/bin/bash

set -e

REPO="zablon-oigo/dbt-postgres-trino-elt-pipeline"
TAG="dataset-v1"

BASE="https://github.com/${REPO}/releases/download/${TAG}"

ZIP_FILE="sales-dataset.zip"
DATA_DIR="data/raw"

mkdir -p "$DATA_DIR"

echo "Downloading dataset..."

wget -c "$BASE/$ZIP_FILE" -O /tmp/"$ZIP_FILE"

echo "Extracting dataset..."

unzip -o /tmp/"$ZIP_FILE" -d "$DATA_DIR"

rm /tmp/"$ZIP_FILE"

echo "Dataset ingestion completed"