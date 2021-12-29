/system scheduler remove [find where name=modem_restart]
/system scheduler
add interval=5m name=lifecell_pinger on-event=" :if ([/ping $lifecellip count=3]\
    \_= 0) do={\r\
    \n    /system routerboard usb power-reset duration=2\r\
    \n    /log warning message=\"cant ping modem, usb reload\"\r\
    \n    }" policy=\
    ftp,reboot,read,write,policy,test,password,sniff,sensitive,romon \
    start-date=jan/14/2020 start-time=16:46:31
/tool netwatch remove [find where host=$lifecellip]
/system script remove [find where name=modem_dont_resolve]
/system script remove [find where name=modem_restart]
/log info message="Ansible task is done"
