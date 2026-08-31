#!/usr/bin/env bash
# Apply the Box UK teal folder icon to one or more folders (macOS).
# Usage: ./set-folder-icon.sh <folder> [folder...]
set -euo pipefail
ICON="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/folder-icon.png"
[[ $# -ge 1 ]] || { echo "usage: $0 <folder> [folder...]"; exit 2; }
for target in "$@"; do
  [[ -e "$target" ]] || { echo "skip (not found): $target"; continue; }
  osascript -l JavaScript -e '
    ObjC.import("Cocoa");
    var ws = $.NSWorkspace.sharedWorkspace;
    var img = $.NSImage.alloc.initWithContentsOfFile("'"$ICON"'");
    var ok = ws.setIconForFileOptions(img, "'"$target"'", 0);
    ok ? "ok" : "failed";
  ' >/dev/null && echo "✓ $target"
done
