#!/bin/sh
set -ex
wget https://github.com/protocolbuffers/protobuf/releases/download/v3.14.0/protoc-3.14.0-linux-x86_64.zip
unzip -o protoc-3.14.0-linux-x86_64.zip -d /usr/local bin/protoc
unzip -o protoc-3.14.0-linux-x86_64.zip -d /usr/local 'include/*'
#ls -al /usr/local/bin/protoc
