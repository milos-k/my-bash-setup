#!/bin/bash

#include my "includes" directory
for FILE in "${HOME}"/includes/*; do
  # shellcheck source=${HOME}/includes/${FILE}
  # shellcheck disable=SC1091
  source "${FILE}"
done
