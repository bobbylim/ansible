
# sudo su
# change directory to ansible (cd /R31/github/ansible)
# Make sure to login to azure (az login)
# Delete known host file (nano /root/.ssh/known_hosts)
# run shell script (./azure-demo-01.sh)

START_TIME=$SECONDS

ansible-playbook -i inventory/hosts playbook/azure/pb-azure-vn.yaml
cat command/azure-demo-01.txt | parallel "{}"

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo " "
echo "TotaL Duration:"
echo "$(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
