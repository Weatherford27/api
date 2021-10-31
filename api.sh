#!/bin/bash
project="$1"
array[0]="europe-west4-a"
array[2]="us-central1-c"
size=${#array[@]}
index=$(($RANDOM % $size))
region=${array[$index]}
gcloud alpha compute tpus tpu-vm create node-1 --zone=$region --project=$project --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-2 --zone=$region --project=$project --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-3 --zone=$region --project=$project --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-4 --zone=$region --project=$project --accelerator-type=v3-8 --version=v2-alpha

