#!/bin/bash
PATH_TO_TENSORFLOW_MODELS=$1

export PYTHONPATH=$PYTHONPATH:$1/research:$1/research/slim 
