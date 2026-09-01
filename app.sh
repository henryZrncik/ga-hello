#!/usr/bin/env bash
# Simple app: greets the world (or whoever you pass in).
set -euo pipefail

name="${1:-world}"
echo "hello, ${name}!"
