# This script will automatically Create F5-BIGIP and UBUNTU VM on Azure

# sudo su
# change directory to ansible (cd /R31/github/ansible)
# make sure to login to azure (az login)
# delete known host file (nano /root/.ssh/known_hosts)
# input F5 BIGIP license on ansible playbook (pb-azure-vm-bigip-01.yaml)
# run shell script (./azure-demo-01.sh)

START_TIME=$SECONDS

ansible-playbook -i ~/github/ansible/1.2/inventory/hosts ~/github/ansible/1.2/playbook/azure/pb-azure-vn.yaml
cat ~/github/ansible/1.2/command/azure-demo-01.txt | parallel "{}"

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo " "
echo "TotaL Duration:"
echo "$(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
echo " "
echo " "
