echo 'Enabling Firewall rules for Hamachi. Please wait a while.'
timeout 10


netsh advfirewall firewall add rule name="Subnautica Nitrox - INBOUND" dir=in action=allow protocol=TCP localport=11000 enable=yes
netsh advfirewall firewall add rule name="Subnautica Nitrox - OUTBOUND" dir=out action=allow protocol=TCP localport=11000 enable=yes

echo 'Subnautica Nitrox server ports are enabled.'
timeout 5