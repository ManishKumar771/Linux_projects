sudo useradd user1
sudo useradd user2

sudo groupadd logteam

sudo usermod -aG logteam user1
sudo usermod -aG logteam user2

sudo mkdir /central_logs

sudo chgrp logteam /central_logs

sudo chmod 1777 /central_logs
