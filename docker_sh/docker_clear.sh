#!/bin/bash

PORT_NUMBER=$1

docker stop ${PORT_NUMBER} && docker rm ${PORT_NUMBER}
