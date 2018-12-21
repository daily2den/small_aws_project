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
Also a copy of aws and git software have to be installed.
We will figure it out for debian based distributions of linux.
### Installing

To install terrafom binary package you might want to download it
- cd ~;mkdir terraform;cd terraform
- wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip and unpack it
- unzip terraform_0.11.11_linux_amd64.zip

To install git and aws clients you might want to type those command in your's pc's console:
- sudo apt-get update
- sudo apt-get install awscli -y
- sudo apt-get install git -y
### Configuring

Assuming you have got your Amazon AWS account created already. If you don't have one, you are
required to create a free account via this link https://aws.amazon.com/
After you have set up your main aws account, it's highly advisible to create additional accounts.
These are called IAM accounts, it will help to secure your main account.
To configure aws client type
- aws configure
and fill all the necessary fields

Create ssh key pair by typing
- ssh-keygen -t rsa -C "awskey" -f ~/.ssh/awskey
- mv -f ~/.ssh/awskey ~/.ssh/awskey.pem
and then import it into AWS key management system
- aws ec2 import-key-pair --key-name "awskey" --public-key-material file://~/.ssh/awskey.pub
this ssh key pair will allow you to login into your EC2 intance once it is up and running

To clone this git repository to your local drive enter
- cd ~
- git clone https://github.com/daily2den/small_aws_project/
- cd small_aws_project

To initialize Terraform client enter
- ~/terraform/terraform init

## Deployment

To check if everything is okay and ready for the ec2 instance deployment type
- ~/terraform/terraform plan

To deploy it enter
- ~/terraform/terraform apply

At that time you could access your newly deployed EC2 instance via ssh client
- ssh -i "~/.ssh/awskey.pem" ubuntu@ec2-54-218-90-15.us-west-2.compute.amazonaws.com


Thank you for using this project!
