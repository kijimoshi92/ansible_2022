/system script add dont-require-permissions=no name=script2 owner=kijimoshi policy=ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon source="
:set $addr "$[/ip address get [find interface="ether1"] address]";
:set $ident "$[/system identity get value-name=name]";
:set $uptime "$[/system resource get value-name=uptime]";
/tool fetch url=\"https://api.telegram.org/bot824419987:AAFLA5jlnuHOFi762o7jJRwmraE0UvbX2hg/sendMessage\?chat_id=-1001073414523&text=%F0%9F%86%94: \$ident; // %F0%9F%92%BB: \$addr; // %E2%8F%B0: \$uptime; // %E2%9C%8B Ansible PUSH DATA\"
"
