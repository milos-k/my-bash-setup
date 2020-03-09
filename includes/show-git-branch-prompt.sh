#!/bin/bash

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

OPS1="${PS1}"

my_prompt() {
  if git branch > /dev/null 2>&1; then
    export PS1="\u@\[\033[32m\]\w\[\033[33m\]\$(git_branch)\[\033[00m\]\$ "
  else
    export PS1="${OPS1}"
  fi
}

PROMPT_COMMAND="my_prompt"
