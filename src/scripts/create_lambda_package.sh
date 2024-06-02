#!/bin/bash

# Root directory path
ROOT_DIR=$(pwd)
# Virtual environment location
LAMBDA_NAME="$1"
SITE_PACKAGES_DIR="envs/lambdas/${LAMBDA_NAME}-env/lib/python3.12/site-packages"
LAMBDAS_DIR=${ROOT_DIR}/"src/lambdas"
LAMBDA_PKG_PATH="${ROOT_DIR}/${LAMBDA_NAME}_pkg.zip"

# This checks if the virtual environment location of the lambda function exists
if [[ -d "${SITE_PACKAGES_DIR}" ]]; then
  # Create a zip file with the libraries in the virtual environment at the root directory
  cd "${SITE_PACKAGES_DIR}" && zip -r "${LAMBDA_PKG_PATH}" .
  # Add *.py to the zip lambda package
  # shellcheck disable=SC2140
  cd "${LAMBDAS_DIR}"/"${LAMBDA_NAME}"&& zip -r "${LAMBDA_PKG_PATH}" . -i "*.py"
fi


