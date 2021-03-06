# AWS ECS Cluster Setup using Terraform

Purpose of this repository is to create an ECS Cluster and deploy the containers defined in task definition.Here we are deploying 2 containers "hello-world" and "weather-service" defined in a single task definition file.  "hello-world" and "weather-service" have been pushed to ECR repostory using "hello-world" (https://github.com/gguptahcl/hello-world.git) & "weather-service" (https://github.com/gguptahcl/weather-service.git) GIT projects

### Prerequisities

1) Terrafform should be installed 
2) AWS IAM Role with access to IAM, EC2, Beanstalk & Elastic Container Registry/Engine and it's access & secret keys. Profile must be set inside `~/.aws/credentials` directory.
3) Key should exist in AWS. 

### Contents of repo
 - ```*.tf``` files - Terraform infrastructure definition written in HCL (HashiCorp Configuration Language)
 - ```clean.sh``` - script for cleaning temporary files

### Setup

1. Create `terraform.tfvars`  file and place variables inside this file.This file is not present in GIT Repo
	profile="XXXXXXXXX"
	application_name="XXXXXXXXX"
	application_description="XXXXXXXXX"
	application_environment="XXXXXXXXX"
	access_key="XXXXXXXXX"
	secret_key="XXXXXXXXX"

2. Run terraform init
3. Run terraform plan
4. Run terraform apply . This will pick up the plan file created in # 2 above and create an env. This step may take few minutes to complete.
5. #4 above will output EasticBeanStalk env's CNAME. Copy CNAME and access this in browser and you should be able to see AWS default sample application running. 

### Rollbacking setup
```
terraform destroy
```


