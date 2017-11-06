# Move to base dir 
cd /home/ocarval/

# Install golang
mkdir /home/ocarval/go
sudo apt-get install golang-go -y
echo "export GOPATH=/home/ocarval/go" >> /home/ocarval/.bash_aliases
echo "export PATH=$PATH:$GOROOT/bin:$GOPATH/bin" >> /home/ocarval/.bash_aliases
source /home/ocarval/.bash_aliases

# Install itself as a dependency 
go get -u github.com/otaviocarvalho/grpc_poc

# Install golang and dependencies
go get google.golang.org/grpc
go get -u github.com/golang/protobuf/proto
go get -u github.com/golang/protobuf/protoc-gen-go
go get github.com/otaviocarvalho/hdrhistogram
go get github.com/VividCortex/ewma