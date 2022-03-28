if [[ -e "/usr/bin/yum" ]] 
then
  yum update -y
  yum install -y lrzsz git zip unzip curl wget qrencode libcap jq
else
  apt-get update -y
  apt-get install -y lrzsz git zip unzip curl wget qrencode libcap2-bin dbus jq
fi

# 防止处于 /tmp/233boy/v2ray 目录
cd
rm -rf /tmp/233boy/v2ray
git clone https://github.com/crazypeace/v2ray -b "master" /tmp/233boy/v2ray --depth=1
cd /tmp/233boy/v2ray
chmod +x install.sh
./install.sh local
