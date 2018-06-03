echo "Installing ansible"
yum install -y ansible

echo "Copying ssh keys"
ssh root@$HIVE_IP mkdir ~/.ssh
scp id_rsa.pub root@$HIVE_IP:~/.ssh/authorized_keys


echo "Running Ansible playbook"
export ANSIBLE_HOST_KEY_CHECKING=False
ansible-playbook hw7.yaml -i hosts.ini 

echo "Testing docker servers"
echo "Checking 192.168.1.201: "
echo -e "\t$(curl -s 192.168.1.201)"
echo "Checking 192.168.1.202: "
echo -e "\t$(curl -s 192.168.1.202)"
echo "Checking 192.168.1.203: "
echo -e "\t$(curl -s 192.168.1.203)"
echo "Checking 192.168.1.204: "
echo -e "\t$(curl -s 192.168.1.204)"
echo "Checking 192.168.1.205: "
echo -e "\t$(curl -s 192.168.1.205)"
echo "Checking 192.168.1.206: "
echo -e "\t$(curl -s 192.168.1.206)"
echo "Checking 192.168.1.207: "
echo -e "\t$(curl -s 192.168.1.207)"
echo "Checking 192.168.1.208: "
echo -e "\t$(curl -s 192.168.1.208)"
echo "Checking 192.168.1.209: "
echo -e "\t$(curl -s 192.168.1.209)"
echo "Checking 192.168.1.210: "
echo -e "\t$(curl -s 192.168.1.210)"
