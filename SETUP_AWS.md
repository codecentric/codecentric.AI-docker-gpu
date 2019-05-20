```
sudo -i
apt-get update
apt-get upgrade

apt-get install apt-transport-https ca-certificates curl software-properties-common unzip
apt-get update
apt-get install docker-ce

usermod -aG docker ubuntu

curl -s -L https://nvidia.github.io/nvidia-docker/gpgkey |  sudo apt-key add -
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-docker/$distribution/nvidia-docker.list |  sudo tee /etc/apt/sources.list.d/nvidia-docker.list

apt-get update

apt-get install -y nvidia-docker2
pkill -SIGHUP dockerd
apt-get install nvidia-384

docker run --runtime=nvidia --rm f nvidia-smi

exit 

git clone https://github.com/codecentric/codecentric.AI-bootcamp.git

cd codecentric.AI-bootcamp
./run-gpu.sh

``` 