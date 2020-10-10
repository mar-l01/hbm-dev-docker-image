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
RUN apt-get install -y pylint

# clean up
RUN apt-get autoremove -y && \
    apt-get clean -y
