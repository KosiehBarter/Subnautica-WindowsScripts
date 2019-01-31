echo 'Enabling Firewall rules for Hamachi. Please wait a while.'
timeout 10


netsh advfirewall firewall add rule name="Hamachi session start port - INBOUND" dir=in action=allow protocol=TCP localport=12975 enable=yes
netsh advfirewall firewall add rule name="Hamachi session run port - INBOUND" dir=in action=allow protocol=TCP localport=32976 enable=yes
netsh advfirewall firewall add rule name="Hamachi UDP - INBOUND" dir=in action=allow protocol=TCP localport=17771 enable=yes
netsh advfirewall firewall add rule name="Hamachi session start port - OUTBOUND" dir=out action=allow protocol=TCP localport=12975 enable=yes
netsh advfirewall firewall add rule name="Hamachi session run port - OUTBOUND" dir=out action=allow protocol=TCP localport=32976  enable=yes
netsh advfirewall firewall add rule name="Hamachi UDP - OUTBOUND" dir=out action=allow protocol=TCP localport=17771 enable=yes

echo 'Hamachi ports are opened. Please restart Hamachi, if you haven't already.'
timeout 5