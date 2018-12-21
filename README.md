# A small aws project
This project was created to help those taking their first steps
in EC2 deployment with Terraform software
## Getting Started
These instructions will get you a copy of the project on your local machine
for development and testing purposes and a copy of EC2 instance up and running with apache2
web server installed. Also your EC2 instance will have ingress and egress traffic policy set up
and a ssh key pair to access it.
### Prerequisites
You are going to heed terraform software installed on your pc. It could be done via downloading
source code and compiling it or you may want to obtain binary prebuilt package for your distribution.
Download link is https://www.terraform.io/downloads.html.
Also a copy of aws and git software have to be installed. For debian based distributions of linux
### Installing
To install terrafom binary package you might want to download it
- cd ~;mkdir terraform;cd terraform
- wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip
and unpack it
- unzip terraform_0.11.11_linux_amd64.zip
To install git and aws clients you might want to type those command in your's pc's console:
- sudo apt-get update
- sudo apt-get install awscli -y
- sudo apt-get install git -y
### Configuring

