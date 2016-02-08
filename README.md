-log on to the mgmt node

-create the rsa key
ssh-keygen -t rsa -b 2048

-distripute the public keys to other node
ansible-playbook ssh-addkey.yml --ask-pass
 password -> vagrant

-install git on all machines
-install nginx on app machines
-install haproxy on lb machine and configure lb to forward http request to apps 

ansible-playbook bootstrapSite.yml -i ~/inventory.ini

-Rolling update
ansible-playbook rolling-update.yml -i ~/inventory.ini

-
http://localhost:8080/
http://localhost:8080/haproxy?stats
