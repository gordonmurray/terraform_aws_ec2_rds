[![tfsec](https://github.com/gordonmurray/terraform_aws_ec2_rds/actions/workflows/tfsec-analysis.yml/badge.svg)](https://github.com/gordonmurray/terraform_aws_ec2_rds/actions/workflows/tfsec-analysis.yml)

# Terraform AWS EC2 RDS

Using Terraform on AWS to create an EC2 instance that connects securely to an RDS instance.

AWS Secrets manager is used to store a generated password for the RDS instance.


## Cost

```
 Name                                                            Monthly Qty  Unit                    Monthly Cost

 aws_db_instance.default
 ├─ Database instance (on-demand, Single-AZ, db.t3.micro)                730  hours                         $13.14
 └─ Storage (general purpose SSD, gp2)                                    20  GB                             $2.54

 aws_instance.example
 ├─ Instance usage (Linux/UNIX, on-demand, t3.micro)                     730  hours                          $8.32
 └─ root_block_device
    └─ Storage (general purpose SSD, gp2)                                 10  GB                             $1.10

 aws_kms_key.default
 ├─ Customer master key                                                    1  months                         $1.00
 ├─ Requests                                               Monthly cost depends on usage: $0.03 per 10k requests
 ├─ ECC GenerateDataKeyPair requests                       Monthly cost depends on usage: $0.10 per 10k requests
 └─ RSA GenerateDataKeyPair requests                       Monthly cost depends on usage: $0.10 per 10k requests

 aws_secretsmanager_secret.example
 ├─ Secret                                                                 1  months                         $0.40
 └─ API requests                                           Monthly cost depends on usage: $0.05 per 10k requests

 OVERALL TOTAL                                                                                              $26.50
 ```