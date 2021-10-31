#!/bin/bash

project="$1"

gcloud alpha compute tpus tpu-vm create node-1 --zone=europe-west4-a --project=$project --accelerator-type=v3-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-2 --zone=us-central1-c --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-3 --zone=us-central1-b --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-4 --zone=europe-west4-a --project=$project --accelerator-type=v3-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-5 --zone=us-central1-c --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-6 --zone=us-central1-b --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-7 --zone=europe-west4-a --project=$project --accelerator-type=v3-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-8 --zone=us-central1-c --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-9 --zone=us-central1-b --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-10 --zone=europe-west4-a --project=$project --accelerator-type=v3-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-11 --zone=us-central1-c --project=$project --accelerator-type=v2-8 --version=v2-alpha
sleep 5
gcloud alpha compute tpus tpu-vm create node-12 --zone=us-central1-b --project=$project --accelerator-type=v2-8 --version=v2-alpha
