#!/bin/sh

if [ -f /tmp/install_talisman.bash ]; then
  bash /tmp/install_talisman.bash
fi

if [ -z "$(ls /workspace/docs)" ] && [ -z "$(ls /workspace/exastro-it-automation-docs)" ]; then
  sudo update-ca-certificates

  cd /workspace
  git submodule update --init --recursive
fi

if [ -z "$(ls /workspace/docs)" ]; then
  cd /workspace/docs
  git checkout master
fi

if [ -z "$(ls /workspace/exastro-it-automation-docs)" ]; then
  cd /workspace/exastro-it-automation-docs/
  git checkout main
fi