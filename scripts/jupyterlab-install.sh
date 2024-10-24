#!/bin/bash
# ---------------------------------------------------------------
# Install script for setting up Jupyterlab
# By          Jez Smith
# Tested on   Mac OS X 14.7 Apple M1 Pro
# ---------------------------------------------------------------

# jupyter metapackage installs
# - notebook
# - jupyterlab
# - ipython
# - ipykernel
# - jupyter-console
# - nbconvert
# - ipywidgets
pip install --upgrade jupyter jupyterlab-git jupyterlab_widgets ipympl

jupyter lab build
