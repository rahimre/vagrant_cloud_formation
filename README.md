-log on to the mgmt node

-create the rsa key<br>
ssh-keygen -t rsa -b 2048

-distripute the public keys to other node  <br>
ansible-playbook ssh-addkey.yml --ask-pass  <br>
 password -> vagrant   <br>

-install git on all machines<br>
-install nginx on app machines<br>
-install haproxy on lb machine and configure lb to forward http request to apps<br> 

ansible-playbook bootstrapSite.yml -i ~/inventory.ini

-Rolling update
ansible-playbook rolling-update.yml -i ~/inventory.ini

-
http://localhost:8080/
http://localhost:8080/haproxy?stats
