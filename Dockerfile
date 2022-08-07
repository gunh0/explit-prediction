FROM python:3.9

RUN apt-get update

# jupyter lab install
RUN  pip3 install jupyterlab==3.2.4

WORKDIR /root/jupyter

ENTRYPOINT /bin/bash -c "jupyter lab --ip=0.0.0.0 --allow-root --NotebookApp.token=''"
