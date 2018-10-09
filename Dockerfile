FROM python:3.6

COPY . /

RUN pip install awscli --upgrade --user
RUN pip install boto3 lxml onelogin
RUN python setup.py develop
CMD python src/onelogin/aws-assume-role/aws-assume-role.py --onelogin-subdomain spothero --onelogin-app-id 763137 --aws-region us-west-2 --profile default --duration 28800