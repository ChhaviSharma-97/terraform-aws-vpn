#!/bin/bash
os=`cat /etc/os-release | grep NAME | head -1 | cut -d "=" -f 2 | tr -d '"' | xargs`
echo "$os"
if [[ $os = "Amazon Linux" ]]
then
tee /etc/yum.repos.d/pritunl.repo<<EOF
[pritunl]
name=Pritunl Repository
baseurl=https://repo.pritunl.com/stable/yum/amazonlinux/2/
gpgcheck=1
enabled=1
EOF

yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
tee /etc/yum.repos.d/mongodb-org-5.repo<<EOF
[mongodb-org-5.0]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/amazon/2/mongodb-org/5.0/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-5.0.asc
EOF

gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 7568D9BB55FF9E5287D586017AE645C0CF8E292A
gpg --armor --export 7568D9BB55FF9E5287D586017AE645C0CF8E292A > key.tmp; rpm --import key.tmp; rm -f key.tmp
yum install pritunl mongodb-org -y

elif [[ $os = "Ubuntu" ]]
then
apt-get update -y
apt-get install curl gnupg2 wget unzip -y
echo "deb http://repo.pritunl.com/stable/apt focal main" |  tee /etc/apt/sources.list.d/pritunl.list
# Import signing key from keyserver
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
# Alternative import from download if keyserver offline
curl https://raw.githubusercontent.com/pritunl/pgp/master/pritunl_repo_pub.asc | apt-key add -
echo "deb https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" |  tee /etc/apt/sources.list.d/mongodb-org-5.0.list
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | apt-key add -
apt update
# WireGuard server support
apt -y install wireguard wireguard-tools
ufw disable
apt -y install pritunl mongodb-org  
fi

systemctl enable --now mongod pritunl
pritunl set-mongodb "mongodb://localhost:27017/pritunl"
systemctl restart pritunl