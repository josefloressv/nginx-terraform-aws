# nginx-terraform-aws
Nginx Terraform AWS

# Run
```
export AWS_ACCESS_KEY_ID=anaccesskey
export AWS_SECRET_ACCESS_KEY=asecretkey

# create SSH key
ssh-keygen -t ed25519 -C "jf@goweb.tech" -q -N '' -f ssh-key

terraform plan
terraform apply
terraform destroy

ssh -i ssh-key ubuntu@54.197.12.174
ssh -i ssh-key ec2-user@54.197.12.174

aws ec2 describe-images --owners self amazon --output table
aws ec2 describe-images --owners self amazon --image-ids ami-09d3b3274b6c5d4aa --output table
```