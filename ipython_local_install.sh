#!/bin/bash

# Script for installing ipython on systems where you don't have root access.
# ipython will be installed in $HOME/.local/python2.x/site-packages


mkdir -p $HOME/ipython_tmp
cd $HOME/ipython_tmp
wget -O ipython-0.13.1.tar.gz http://archive.ipython.org/release/0.13.1/ipython-0.13.1.tar.gz

tar xvzf ipython-0.13.1.tar.gz
cd ipython-0.13.1
python setup.py install --user

cd ..

rm -rf $HOME/ipython_tmp

echo "$HOME/.local/bin/ipython is available"
echo "you can add $HOME/.local/bin/ to your PATH"
echo "also add $HOME/.local/lib/python2.7/site-packages to you PYTHONPATH"
