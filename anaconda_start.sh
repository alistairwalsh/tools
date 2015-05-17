#!/bin/bash

wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.2.0-Linux-x86_64.sh

bash -b Anaconda-2.2.0-Linux-x86_64.sh

export PATH=~/anaconda/bin:$PATH

conda install --channel https://conda.binstar.org/jorge qiime