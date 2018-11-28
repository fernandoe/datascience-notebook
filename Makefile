TRAVIS_REPO_SLUG ?= fernandoe/datascience-notebook
TAG ?= latest

build:
	docker build --build-arg http_proxy=http://15.85.195.199:8088 --build-arg https_proxy=http://15.85.195.199:8088 -t '${TRAVIS_REPO_SLUG}:${TAG}' .

push:
	docker push '${TRAVIS_REPO_SLUG}:${TAG}'


# a3b2cd3e43f224f794639c52808dde9266f0a29f31775d50