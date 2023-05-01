INSTACNE_ID=$(aws cloudformation describe-stacks --stack-name $1 --query "Stacks[0].Outputs[0].OutputValue" --output text)

aws ec2 describe-instances --instance-ids $INSTACNE_ID --query 'Reservations[*].Instances[*].PublicIpAddress' --output text