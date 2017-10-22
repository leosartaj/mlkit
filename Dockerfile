FROM continuumio/anaconda3:latest

MAINTAINER Sartaj Singh <singhsartaj94@gmail.com>

# install make
RUN apt-get update -y
RUN apt-get install -y make g++

# Install xgboost
RUN git clone --recursive https://github.com/dmlc/xgboost.git /opt/xgboost
RUN cd /opt/xgboost; make -j4
RUN cd /opt/xgboost/python-package; python setup.py install
