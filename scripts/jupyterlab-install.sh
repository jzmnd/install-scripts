#!/bin/bash
# ---------------------------------------------------------------
# Install script for setting up Jupyterlab
# By          Jez Smith
# Tested on   Mac OS X 13.2.1 Apple M1 Pro
# ---------------------------------------------------------------

pip install --upgrade jupyterlab jupyterlab-git

jupyter labextension install --no-build @jupyter-widgets/jupyterlab-manager
jupyter labextension install --no-build jupyter-matplotlib
jupyter labextension install --no-build @jupyterlab/git

jupyter lab build
