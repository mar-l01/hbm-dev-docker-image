FROM python:3.8-slim

LABEL maintainer="Markus Loipfinger <m.loipfinger@hotmail.de>"
LABEL author="Markus Loipfinger <m.loipfinger@hotmail.de>"
LABEL description="A Linux development image that is used to implement a Python application."

# install image requirements
RUN apt-get update && \
    # git integration
    apt install -y git && \
    # nano editor
    apt install -y nano && \
    # add user 'docker'
    useradd -m docker

# linter
RUN pip install pylint --upgrade

# packages required for image processing libraries below
RUN apt-get install -y libgl1-mesa-glx &&\
	apt-get install -y libglib2.0-0

# image processing libraries
RUN pip install numpy &&\
	pip install imutils &&\
	pip install scikit-image &&\
	pip install opencv-python

# clean up
RUN apt-get autoremove -y && \
    apt-get clean -y
