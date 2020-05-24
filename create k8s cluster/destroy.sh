#!/bin/bash

cd terraform

terraform destroy -var-file="params.tfvars" -auto-approve

cd ..


