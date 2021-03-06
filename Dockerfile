FROM andrewosh/binder-base

USER root

RUN npm install -g bower

USER main

RUN git clone https://github.com/K3D-tools/K3D-jupyter.git

WORKDIR K3D-jupyter

RUN bower install --config.interactive=false
RUN pip install jupyter-pip ipywidgets
RUN pip install .
