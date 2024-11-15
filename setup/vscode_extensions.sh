#!/bin/bash

extensions=(
    "donjayamanne.python-extension-pack"
    "njpwerner.autodocstring"
    "ms-toolsai.jupyter"
    "vscjava.vscode-java-pack"
    "ritwickdey.liveserver"
    "mhutchie.git-graph"
    "mechatroner.rainbow-csv"
)

for ext in "${extensions[@]}"; do
    code --install-extension "$ext" --force
done
