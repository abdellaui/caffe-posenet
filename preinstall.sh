#!/usr/bin/env sh

conda create -n caffe-posenet python==2.7
conda activate caffe-posenet
pip install -r python/requirements.txt
pip install lmdb
pip install opencv-python
pip install pydot

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install graphviz

sudo apt-get install libprotobuf-dev libleveldb-dev libsnappy-dev libopencv-dev libhdf5-serial-dev protobuf-compiler
sudo apt-get install --no-install-recommends libboost-all-dev
sudo apt-get install libatlas-base-dev
sudo apt-get install libopenblas-dev
sudo apt-get install libgflags-dev libgoogle-glog-dev liblmdb-dev



echo "\n# caffe-posenet preinstall.sh" >> ~/.bashrc
echo "export CAFFE_POSENET_ROOT=$(pwd)" >> ~/.bashrc
echo "export LD_LIBRARY_PATH=\$LD_LIBRARY_PATH:/usr/local/cuda/lib64" >> ~/.bashrc
echo "export PYTHONPATH=\$CAFFE_POSENET_ROOT/python:\$PYTHONPATH" >> ~/.bashrc
echo "# end caffe-posenet preinstall.sh\n" >> ~/.bashrc

source ~/.bashrc

