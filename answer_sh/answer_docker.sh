#!/bin/bash

PORT_NUMBER=$1

docker run --rm -it --gpus all --entrypoint=/bin/bash -v $HOME/.answer/core.storage:/usr/local/c2core/storage bogonets/answer-core
