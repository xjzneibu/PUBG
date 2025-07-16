
rm -rf /data/user/0/com.tencent.ig/files/ano_tmp
rm -rf /data/data/com.tencent.ig/files/ano_tmp
                  uid=`cat /data/system/packages.list | grep 'com.tencent.ig ' | awk '{print $2}'`


echo -ne '                   \033[1;37m  □□□□□□□□□□ \r'








ip6tables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 443 -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 443 -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 53 -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 53 -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 80 -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 80 -j DROP

iptables -I OUTPUT -m owner --uid-owner=$uid -p udp -s 0.0.0.0/0 --sport 443 -j DROP  #禁止访问所有https

iptables -I OUTPUT -m owner --uid-owner=$uid -p udp -s 0.0.0.0/0 --sport 80 -j DROP   #禁止访问所有http

iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp -s 0.0.0.0/0 --sport 443 -j DROP  #禁止访问所有https

iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp -s 0.0.0.0/0 --sport 80 -j DROP   #禁止访问所有http

iptables -I OUTPUT -m owner --uid-owner=$uid -p udp -d 0.0.0.0/0 --dport 443 -j DROP  #禁止访问所有https

iptables -I OUTPUT -m owner --uid-owner=$uid -p udp -d 0.0.0.0/0 --dport 80 -j DROP   #禁止访问所有http

iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp -d 0.0.0.0/0 --dport 443 -j DROP  #禁止访问所有https

iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp -d 0.0.0.0/0 --dport 80 -j DROP   #禁止访问所有http

iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 443 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 443 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8013 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8013 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8085 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8085 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 9030 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 9030 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 53  -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 853 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 853 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 80 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 80 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8086 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8086 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp --dport 8089 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp --dport 8089 -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p tcp -m multiport --dports http,https -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p udp -m multiport --dports http,https -j DROP
iptables -I OUTPUT -m owner --uid-owner=$uid -p icmp -j DROP




ip6tables -I OUTPUT -m owner --uid-owner=$uid -p tcp -m multiport --dports http,https -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p udp -m multiport --dports http,https -j DROP
ip6tables -I OUTPUT -m owner --uid-owner=$uid -p icmp -j DROP









iptables -I OUTPUT -p all -m string --string mgl.lobby.igamecj.com --algo bm -j DROP
iptables -I OUTPUT -p all -m string --string lobby.igamecj.com --algo bm -j DROP


echo -ne '                   \033[1;31m  ■■■□□□□□□□ \r'




echo -ne '                   \033[1;31m  ■■■□□□□□□□ \r'
#心跳包
iptables -I OUTPUT -p all -m string --string accountlinking-pa-clients6.youtube.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string administration.qq.com.helpshift.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string app.adjust.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string asia.cschannel.anticheatexpert.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string asia.csoversea.mbgame.anticheatexpert.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string cloud.gsdk.proximabeta.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string csoversea.mbgame.anticheatexpert.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string csoversea.mbgame.gamesafe.qq.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string devel.helpshift.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string glcs.listdl.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string global.cschannel.ace-anti.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string global.cschannel.anticheatexpert.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string google.com --algo bm -j REJECT
echo -ne '                   \033[1;31m  ■■■■■■□□□□ \r'
iptables -I OUTPUT -p all -m string --string na.pandora.qq --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string na.pandora.qq.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string napubgm.broker.amsoveasea.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string nawzryhwatm.broker.amsoveasea.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string playmc2.helpshift.com --algo bm -j REJECT
iptables -I OUTPUT -p all -m string --string api.club.gpubgm.com --algo bm -j REJECT

echo -ne '                   \033[1;31m  ■■■■■■■■□□ \r'





iptables -I OUTPUT -m owner --uid-owner=$uid  -p tcp --dport 80 -d wy.llua.cn  -j ACCEPT

echo -ne '                   \033[1;32m  ■■■■■■■■■■ \r'

echo -e "\033[5;46;42;31m            【 测试版1.0 】                 \033[0m"
