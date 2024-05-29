#!/bin/bash
touch ./main.tf
touch ./terraform.tfvars
touch ./variables.tf

# モジュールディレクトリとファイルの作成
modules=("alb" "ecr" "ecs" "iam" "security_group" "vpc")
for module in "${modules[@]}"; do
  mkdir -p ./modules/$module
  touch ./modules/$module/main.tf
  touch ./modules/$module/outputs.tf
  touch ./modules/$module/variables.tf
done

echo "Done"
