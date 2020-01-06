NAMESPACE=kevincharm
IMAGE_NAME=gradle-puppeteer
TAG=latest

default: build push

.PHONY: build push

build:
	docker build . -t $(NAMESPACE)/$(IMAGE_NAME):$(TAG)

push:
	docker push $(NAMESPACE)/$(IMAGE_NAME):$(TAG)
