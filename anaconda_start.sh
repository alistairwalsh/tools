#!/bin/bash

wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.2.0-Linux-x86_64.sh

bash Anaconda-2.2.0-Linux-x86_64.sh -b

echo "export PATH=~/anaconda/bin:$PATH" >> .bashrc 
conda update conda
sudo apt-get update && sudo apt-get install git-core -y
git config --global user.name "alistairwalsh"
git config --global user.email alistair.walsh@me.com
git config --global credential.helper cache
# Set git to use the credential memory cache
<<<<<<< HEAD
=======

git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)
git commit --amend --reset-author
>>>>>>> ed97774a724a053f45d53120aca47fdb5145f1de

git config --global credential.helper 'cache --timeout=3600'
# Set the cache to timeout after 1 hour (setting is in seconds)
conda config --add channels http://conda.binstar.org/jorge
conda install qiime -y

sudo mv sources.list /etc/apt/sources.list -f

gpg --keyserver pgpkeys.mit.edu --recv-key 51716619E084DAB9
gpg -a --export 51716619E084DAB9 | sudo apt-key add -

sudo apt-get -y update

git clone git://github.com/qiime/qiime-deploy.git
git clone git://github.com/qiime/qiime-deploy-conf.git
cd qiime-deploy/
python qiime-deploy.py $HOME/qiime_software/ -f $HOME/qiime-deploy-conf/qiime-1.9.0/qiime.conf --force-remove-failed-dirs
source $HOME/.bashrc

sudo apt-get --force-yes -y install python-dev libncurses5-dev libssl-dev libzmq-dev libgsl0-dev openjdk-6-jdk libxml2 libxslt1.1 libxslt1-dev ant git subversion build-essential zlib1g-dev libpng12-dev libfreetype6-dev mpich2 libreadline-dev gfortran unzip libmysqlclient18 libmysqlclient-dev ghc sqlite3 libsqlite3-dev libc6-i386 libbz2-dev tcl-dev tk-dev r-base r-base-dev libatlas-dev libatlas-base-dev liblapack-dev swig libhdf5-serial-dev

