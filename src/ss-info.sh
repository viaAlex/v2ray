[[ -z $ip ]] && get_ip
if [[ $shadowsocks ]]; then
	local ss="ss://$(echo -n "${ssciphers}:${sspass}@${ip}:${ssport}" | base64 -w 0)#233v2.com_ss_${ip}"
	echo
	echo "---------- Shadowsocks 配置信息 -------------"
	echo
	echo -e "$yellow 服务器地址 = $cyan${ip}$none"
	echo
	echo -e "$yellow 服务器端口 = $cyan$ssport$none"
	echo
	echo -e "$yellow 密码 = $cyan$sspass$none"
	echo
	echo -e "$yellow 加密协议 = $cyan${ssciphers}$none"
	echo
	echo -e "$yellow SS 链接 = ${cyan}$ss$none"
	echo
	echo -e " 备注:$red Shadowsocks Win 4.0.6 $none客户端可能无法识别该 SS 链接"
	echo
	echo -e "提示: 输入$cyan v2ray ssqr $none可生成 Shadowsocks 二维码链接"	
	echo
	echo -e "${yellow}搞不定? 推荐使用Bandwagon官方的机场(VPN) Just My Socks"
	echo -e "这里有优惠码: ${cyan}https://zelikk.blogspot.com/2019/01/bandwagon-just-my-socks.html${none}"
	echo
fi
