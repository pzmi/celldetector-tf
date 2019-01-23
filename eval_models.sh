models_path=$1

./eval_model.sh ${models_path}/faster_rcnn_inception_resnet_v2_atrous_coco_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_inception_resnet_v2_atrous_lowproposals_coco_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_inception_resnet_v2_atrous_lowproposals_oid_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_inception_v2_coco_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_resnet101_coco_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_resnet101_lowproposals_coco_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_resnet50_coco_2018_01_28
./eval_model.sh ${models_path}/faster_rcnn_resnet50_lowproposals_coco_2018_01_28
./eval_model.sh ${models_path}/rfcn_resnet101_coco_2018_01_28
./eval_model.sh ${models_path}/ssd_inception_v2_coco_2018_01_28
./eval_model.sh ${models_path}/ssdlite_mobilenet_v2_coco_2018_05_09
./eval_model.sh ${models_path}/ssd_mobilenet_v1_coco_2018_01_28