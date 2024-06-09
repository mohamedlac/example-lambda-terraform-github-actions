#!/bin/bash

ROOT_DIR=$(pwd)
function_path="$1"
function_name="$2"
dependencies_path="$3"
PATH_TO_ARTIFACTS="${ROOT_DIR}/artifacts"

if [ -d "${dependencies_path}" ] && [ -d "${function_path}" ]; then

  cd "${dependencies_path}" || return
  zip -r "${PATH_TO_ARTIFACTS}"/"${function_name}" .

  cd "${ROOT_DIR}"/"${function_path}" || return
  zip -r "${PATH_TO_ARTIFACTS}"/"${function_name}.zip" . -i "*.py"
fi