# Provision an EC2 instance in AWS
This Terraform configuration provisions an EC2 instance in AWS.

This is largely used for Demonstrating Terraform Enterprise workspaces

## Details
By default, this configuration provisions a Ubuntu 14.04 Base Image AMI (with ID ami-0bdfa1adc3878cd23) with type c5d.2xlarge in the us-east-1 region. The AMI ID, region, and type can all be set as variables. You can also set the name variable to determine the value set for the Name tag.

### Credentials
You should already have a set of AWS keys.   Use the keys with access to the Demo account set environment variables as appropriate:

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY

Even though these are set elsewhere, I typically put these in their own file which exports these values.  

NOTE:  DO NOT PUT THIS FILE ANYWHERE IN VERSION CONTROL!!!   

e.g.
```
cat > ~/.tfe_aws_envs << EOF
export AWS_ACCESS_KEY_ID=MONEROMONEROMONERO
export AWS_SECRET_ACCESS_KEY=don'tyouwishthiswasmakingyoumonero
EOF
```

* Terraform Run 

```
terraform init 
terraform plan -var-file=ec2_instance.tfvars -input=false -out=terraform-plan
terraform apply "terraform-plan"
```
