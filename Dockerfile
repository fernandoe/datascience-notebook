FROM jupyter/datascience-notebook:14fdfbf9cfc1
LABEL maintainer="Fernando Espíndola <fer.esp@gmail.com>"

# https://github.com/jupyter/docker-stacks/blob/master/base-notebook/Dockerfile

USER root

RUN apt-get update && apt-get install -yq libmysqlclient-dev

RUN pip install mysqlclient
