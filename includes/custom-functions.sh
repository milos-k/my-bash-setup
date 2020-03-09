#!/bin/bash

list_my_functions() { #list all my functions placed in ~/includes/
  for FILE in "${HOME}"/includes/*; do
    grep -E '^[[:space:]]*([[:alnum:]_]+[[:space:]]*\(\)|function[[:space:]]+[[:alnum:]_]+)' "${FILE}"
  done
}
