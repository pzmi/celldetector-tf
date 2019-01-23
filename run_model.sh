#!/bin/bash

model_path=$1
dataset_path=$2
config_original=${model_path}/pipeline.config
config=${model_path}/copy_pipeline.config
train_path=${model_path}/eval
eval_path=${model_path}/eval
checkpoint_path=${model_path}/train
labels="${dataset_path}/labels.pbtxt"
train_record="${dataset_path}/train.record"
eval_record="${dataset_path}/test.record"

mkdir $train_path
mkdir $eval_path
mkdir $checkpoint_path

rm $config
cp $config_original $config

sed -i "s:\$MODEL_PATH:${model_path}:g" $config
sed -i "s:\$LABEL_PATH:${labels}:g" $config
sed -i "s:\$TRAINING_SET_PATH:${train_record}:g" $config
sed -i "s:\$TEST_SET_PATH:${eval_record}:g" $config

python train.py --train_dir=$train_path --pipeline_config_path=$config
