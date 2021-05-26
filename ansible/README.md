# Ansible Playbook for MongoDB Monitoring

## Get Host from Inventory

```
ansible-inventory -i inventory/nonprod.aws_ec2.yml --graph
```

## Check playbook

```
cd ansible
ansible-playbook -i inventory/nonprod.aws_ec2.yml --check playbook.yml
```

## Run ad-hoc command

```
ansible -i inventory/nonprod.aws_ec2.yml -a '. /opt/athena/env/athena.env && sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -s -c ssm:AmazonCloudWatch-athena-$ENV-$TENANT' --key-file "~/.ssh/athena-devops.pem" -u ubuntu ip-10-11-32-246.us-east-2.compute.internal
```

## Check service status
