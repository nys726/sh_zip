#!/bin/bash

input=$1
PROJECT_NAME=$2


ROOT_PATH="${HOME}/.answer/core.storage"
PYTHON_PATH="${ROOT_PATH}/python"
WORKSPACE_PATH="${ROOT_PATH}/workspace/CENTRAL::GRAPH::${PROJECT_NAME}"

if [ $input -eq 1 ]
then
    cd $PYTHON_PATH
    ls -l
elif [ $input -eq 2 ]
then
    cd $WORKSPACE_PATH
    ls -l 
fi



