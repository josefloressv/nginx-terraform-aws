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

# Working with nginx
# Installing
```
sudo apt update -y && sudo apt install -y nginx


# Manual installation
sudo nano /etc/apt/sources.list.d/nginx.list
deb [arch=amd64] http://nginx.org/packages/mainline/ubuntu/ bionic ngnix
deb-src http://nginx.org/packages/mainline/ubuntu/ bionic ngnix

#download key
wget https://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key

sudo apt update -y && sudo apt install -y nginx


sudo systemctl status nginx
curl localhost

# borrar archivo default y ver la salida
/etc/nginx/sites-available/default
sudo nginx -s reload

# create sites
/etc/nginx/sites-available/
deploy only create a symbolic link
sudo ln -s /etc/nginx/sites-available/example.com /etc/nginx/sites-enabled/
sudo nginx -s reload

exmaple
server {
       listen 80;
       listen [::]:80;

       server_name localhost;

       root /var/www/example.com;
       index index.html;

       error_page 404 /404.html
}

sudo nginx -t # validate config


# Basic Authentication
sudo apt-get install apache2-utils -y
sudo mkdir /etc/nginx/users
sudo htpasswd -c /etc/nginx/users/.htpasswd admin


       location /admin {
           auth_basic "Admin";
           auth_basic_user_file "/etc/nginx/users/.htpasswd";
       }

```