FROM andrewosh/binder-base

USER root

RUN npm install -g bower

USER main

RUN bower install --config.interactive=false
RUN pip install .
