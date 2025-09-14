```
aws ecr get-login-password --region <your-region> \
  | docker login --username AWS --password-stdin <aws_account_id>.dkr.ecr.<region>.amazonaws.com
docker build -t flask-hello .
docker tag flask-hello:latest <aws_account_id>.dkr.ecr.<region>.amazonaws.com/flask-hello:latest
docker push <aws_account_id>.dkr.ecr.<region>.amazonaws.com/flask-hello:latest
```
