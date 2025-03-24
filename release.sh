#!/bin/bash

# Paths
SRC_DIR="manuscript/src"
RELEASE_DIR="manuscript/release"

# 1. Clean release folder
rm -rf "$RELEASE_DIR"
mkdir -p "$RELEASE_DIR"

# 2. Copy all top-level files from src/
cp "$SRC_DIR"/*.tex "$RELEASE_DIR"
cp "$SRC_DIR"/*.bib "$RELEASE_DIR"

# 3. Copy section files (flatten them to the release folder)
cp "$SRC_DIR"/sections/*.tex "$RELEASE_DIR"

# 4. Copy figures and tables (Elsevier may require them flat, confirm!)
cp "$SRC_DIR"/figures/* "$RELEASE_DIR"
cp "$SRC_DIR"/tables/* "$RELEASE_DIR"

# 5. Replace paths in main.tex to point directly to the flattened files
sed -i 's/sections\///g' "$RELEASE_DIR/main.tex"
sed -i 's/figures\///g' "$RELEASE_DIR/main.tex"
sed -i 's/tables\///g' "$RELEASE_DIR/main.tex"

# 6. Optionally, do the same in any other .tex files if they have paths
for file in "$RELEASE_DIR"/*.tex; do
  sed -i 's/sections\///g' "$file"
  sed -i 's/figures\///g' "$file"
  sed -i 's/tables\///g' "$file"
done

echo "✅ Release folder ready at $RELEASE_DIR"