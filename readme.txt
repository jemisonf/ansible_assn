HW7
Fischer Jemison (jemisonf)

Files:
  * hw7.yaml (playbook)
  * hosts.ini (inventory)
  * id_rsa (private key)
  * id_rsa.pub (public key)
  * test.sh

Instructions:
  1. Start up a PFSense router. Set two CentOS VMs to use an internal network created by the router. Start up the two centos VMs. Select one as the controller as one as the hive.
  2. Log in as root on each VM with password "password".
  3. In the controller, clone the zip file with the assignment files with `curl https://web.engr.oregonstate.edu/~jemisonf/hw7.zip > hw7.zip".
  4. Install unzip with `yum install unzip` and unzip the files with `unzip hw7.zip".
  5. Copy rsa keys to .ssh with `cp id_rsa* ~/.ssh`. You should use `mkdir ~/.ssh` if the directory does not exist. Run `chmod -R 600 ~/.ssh` to make sure permissions are set correctly.
  6. Check the IP of the hive VM. Change the "hive" inventory variable to the correct hive IP in hosts.ini.
  7. Run HIVE_IP=(whatever the hive IP is) ./test.sh.
  8. You should see output based on what is going on in the script. You may be prompted for input.
     * If you get an error while installing python on the docker servers, try restarting the hive VM and see if the error persists. At one point my alpine VMs were unable to connect to the apk source repositories and that was the only fix I could find. If the error persists after restarting, it is probably something else.
