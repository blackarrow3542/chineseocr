##环境配置，支持linux
#virtualenv -p `which python3` env
#source env/bin/activate
pip install -r requirements.txt
git submodule init && git submodule update
#export CUDAHOME=/usr/local/cuda-9.1
#pushd detector/utils && sh make.sh && popd
pushd detector/utils && sh make-for-cpu.sh && popd
pushd darknet && make && popd
