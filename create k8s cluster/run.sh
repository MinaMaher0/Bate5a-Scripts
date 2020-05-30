#!/bin/bash

cd terraform

terraform init 
terraform apply -var-file="params.tfvars" -auto-approve

master_ip=$(terraform output master_ip)
worker_ip_1=$(terraform output worker_ip1)
worker_ip_2=$(terraform output worker_ip2)

echo [master] > Inventory
echo $master_ip >> Inventory

echo [workers] >> Inventory
echo $worker_ip_1 >> Inventory
echo $worker_ip_2 >> Inventory

mv Inventory ../ansible
cd ../ansible

sleep 1m

ansible-playbook -i Inventory playbook.yml

cd ..

echo "master ip = "$master_ip
echo "worker 1 ip = "$worker_ip_1
echo "worker 2 ip = "$worker_ip_2
