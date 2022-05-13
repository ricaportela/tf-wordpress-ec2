# Repo to create terraform inframstraucture on AWS 
## For Test purpose only

## Inside Terminal export this variables
export AWS_ACCESS_KEY=<copy from aws.console value>

export AWS_SECRET_ACCESSS_KEY=<copy from aws.console value>

## Add user credentials 
 aws sts get-caller-identity
 

## Use  Terraform with containers, only Docker and Docker-compose need to be instaled
 docker-compose run --rm tf init

 docker-compose run --rm tf fmt
 
 docker-compose run --rm tf validate
 
 docker-compose run --rm tf plan

# After create EC2 add yaml to create Wordpress containers
