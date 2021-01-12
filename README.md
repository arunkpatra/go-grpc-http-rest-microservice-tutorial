## gRPC and REST API using Golang

[![Build Status](https://travis-ci.org/arunkpatra/go-grpc-http-rest-microservice-tutorial.svg?branch=main)](https://travis-ci.org/arunkpatra/go-grpc-http-rest-microservice-tutorial)
[![Coverage Status](https://coveralls.io/repos/github/arunkpatra/go-grpc-http-rest-microservice-tutorial/badge.svg?branch=main)](https://coveralls.io/github/arunkpatra/go-grpc-http-rest-microservice-tutorial?branch=main)

Based on these tutorials:

- [gRPC and REST Microservice using Go](https://medium.com/@amsokol.com/tutorial-how-to-develop-go-grpc-microservice-with-http-rest-endpoint-middleware-kubernetes-daebb36a97e9)
- [Building a Docker image for your Go based microservice](https://levelup.gitconnected.com/complete-guide-to-create-docker-container-for-your-golang-application-80f3fb59a15e)
- [Go Modules](https://insujang.github.io/2020-04-04/go-modules/)
- [MySQL in Docker Container](https://phoenixnap.com/kb/mysql-docker-container)
- [Code Coverage Reporting](https://github.com/mattn/goveralls)

### Build

- Run Protoc
  ``` 
  ./third_party/protoc-gen.sh
  ```
- Build Server
    ``` 
    cd cmd/server
    go build
    ```

- Build REST and gRPC Clients
    ``` 
    cd cmd/client-rest
    go build
    
    cd cmd/client-grpc
    go build
    ```
### Running
Build Docker Image
```
docker build . -t go-dock  
```
```
docker run -d -p 8080:8080,9090:9090 --name=go-dock --env DB_HOST=localhost:3306,DB_USER=root,DB_PASSWORD=**********,DB_SCHEMA=mysql go-dock
docker run -it -p 8080:8080,9090:9090 --name=go-dock --env DB_HOST=localhost:3306,DB_USER=root,DB_PASSWORD=**********,DB_SCHEMA=mysql go-dock
```

### MySQL

```
docker pull mysql/mysql-server:latest
docker images
docker run --name=mysql -d mysql/mysql-server:latest

```

