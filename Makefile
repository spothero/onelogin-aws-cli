default: build push

build:
	docker build . -t spothero/onelogin-aws-cli:latest

push:
	docker push spothero/onelogin-aws-cli:latest