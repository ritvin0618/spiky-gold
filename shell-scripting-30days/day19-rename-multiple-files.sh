#!/bin/bash

# Directory containing files to rename
TARGET_DIR="/home/vineeth/Dev/spiky-gold-practice/optimal-files"

# 🔄 Loop through files starting with 'demo_'
for file in "$TARGET_DIR"/demo_*.txt; do
  # Skip if no matching files
  [ -e "$file" ] || continue

  # Get the base name
  base=$(basename "$file")
  
  # 📝 Remove the "demo_" prefix to get original name
  original_name="${base#demo_}"
  
  # ✏️ Rename back
  mv "$file" "$TARGET_DIR/$original_name"
  
  echo "✅ Renamed back $base to $original_name"
done

echo "🎯 All files restored to original names!"

