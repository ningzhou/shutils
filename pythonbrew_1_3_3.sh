#!/bin/bash
echo "Install and configue pythonbrew"
pythonbrew install 2.7.3
pythonbrew switch 2.7.3

echo "Initialize the virtualenv"
pythonbrew venv init 

echo "Create a virtual enviroment"
pythonbrew venv create nzhou
pythonbrew venv use nzhou

echo "install essential pkgs: numpy, scipy"
pip install numpy
pip install scipy
