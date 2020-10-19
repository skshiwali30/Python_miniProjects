#!/bin/bash

basic_cmd ()
{
  sudo apt-get update
}

echo "--------------------------
*** Installing Chrome ***
--------------------------"
sleep 2
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
google-chrome -version


echo "-----------------
*** Git ***
-----------------"
sleep 2
basic_cmd
sudo apt install git
sudo apt-get install subversion
git --version
svn --version

echo "----------------------------------------------
*** Java and setting environment variable ***
----------------------------------------------"
sleep 2
basic_cmd
sudo apt install openjdk-8-jdk
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
echo $JAVA_HOME
which java

echo "------------------------
*** Node, npm, yarn ***
------------------------"
sleep 2
basic_cmd
sudo apt-get install nodejs
sudo apt install npm
sudo apt install yarn
npm -v
node -v
yarn -v

echo "--------------
*** Skype ***
--------------"
sleep 2
basic_cmd
sudo snap install skype --classic

echo "----------------
*** Shutter ***
----------------"
sleep 2
basic_cmd
sudo apt-get install shutter

echo "------------
*** SSH ***
------------"
sleep 2
basic_cmd
sudo apt install openssh-server
ssh

echo "----------------------------------
*** IntelliJ community version ***
----------------------------------"
sleep 2
basic_cmd
sudo snap install intellij-idea-community --classic

echo "---------------
*** Docker ***
---------------"
sleep 2
basic_cmd
sudo apt-get install curl
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

echo "----------------
*** Postman ***
----------------"
sleep 2
basic_cmd
sudo snap install postman

echo "-------------------
*** Virtualbox ***
-------------------"
sleep 2
basic_cmd
sudo apt install virtualbox

echo "------------------
*** Kubernetes ***
------------------"
sleep 2
basic_cmd
mkdir kubernetes
cd kubernetes
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
cd ..

basic_cmd
