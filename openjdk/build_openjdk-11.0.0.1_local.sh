#! /bin/bash

JDK_VERSION=11.0.0.1
# download
wget https://download.java.net/openjdk/jdk${JDK_VERSION}/ri/openjdk-${JDK_VERSION}_linux-x64_bin.tar.gz

tar -xzvf openjdk-${JDK_VERSION}_linux-x64_bin.tar.gz
rm -rf openjdk-${JDK_VERSION}_linux-x64_bin.tar.gz
mv jdk-${JDK_VERSION} java

docker build -t openjdk:${JDK_VERSION} -f Dockerfile_local  .
