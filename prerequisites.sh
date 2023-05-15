sudo apt-get update
sudo apt-get upgrade
sudo apt-get install build-essential
sudo apt-get install software-properties-common
sudo apt-get install git
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt-get update
sudo apt-get install golang-go
go version
echo 'export GOPATH=$HOME/go'
echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin'
source ~/.bashrc
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum
make geth
