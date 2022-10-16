sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y \
git clone https://github.com/xmrig/xmrig.git \
mkdir xmrig/build && cd xmrig/build \
cmake .. \
make -j$(nproc) \
cd .. \
cd .. \
sudo apt-get install software-properties-common apt nvidia-detect nvidia-driver -y \
sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/debian10/x86_64/7fa2af80.pub \
sudo add-apt-repository "deb https://developer.download.nvidia.com/compute/cuda/repos/debian10/x86_64/ /" \
sudo add-apt-repository contrib \
sudo apt-get update \
sudo apt-get -y install cuda \
git clone https://github.com/xmrig/xmrig-cuda.git \
mkdir xmrig-cuda/build && cd xmrig-cuda/build \
cmake .. -DCUDA_LIB=/usr/local/cuda/lib64/stubs/libcuda.so -DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda \
make -j$(nproc) \
wget https://raw.githubusercontent.com/AiyaOnishi/miningscript/main/config.json \
sudo mv /xmrig/build/xmrig /home/root/ \
sudo mv /xmrig-cuda/build/libxmrig-cuda.so /home/root/ \
cd /home/root/ \
./xmrig
