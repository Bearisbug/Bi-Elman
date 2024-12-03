#!/usr/bin/env bash
set -e
set -x

subfolder=${1:-"eval"}
base_data_dir=${BASE_DATA_DIR:-"marigold-data"}

python eval.py \
    --base_data_dir $base_data_dir \
    --dataset_config config/dataset/data_kitti_eigen_test.yaml \
    --alignment least_square \
    --prediction_dir output/${subfolder}/kitti_eigen_test/prediction \
    --output_dir output/${subfolder}/kitti_eigen_test/eval_metric \
