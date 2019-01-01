#!/bin/bash

model_path=$1
config_original=${model_path}/pipeline.config
config=${model_path}/copy_pipeline.config
train_path=${model_path}/eval
eval_path=${model_path}/eval
checkpoint_path=${model_path}/train
labels="/home/dexior/Data/Documents/Praca_magisterska/dataset/dataset-master/unlabeled/labels.pbtxt"
train_record="/home/dexior/Data/Documents/Praca_magisterska/dataset/dataset-master/unlabeled/train/train.record"
eval_record="/home/dexior/Data/Documents/Praca_magisterska/dataset/dataset-master/unlabeled/test/test.record"

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
