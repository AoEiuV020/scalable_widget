#!/bin/sh
set -e
script_dir=$(cd $(dirname $0);pwd)
ROOT=$(dirname "$script_dir")
project_name=$(basename "$ROOT")
app_name=${project_name//_/}
apps_dir="$ROOT"/apps
packages_dir="$ROOT"/packages
organization=com.aoeiuv020
