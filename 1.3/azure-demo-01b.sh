# This script will automatically Create F5-BIGIP and UBUNTU VM on Azure

# make sure to login to azure (az login)
# run shell script (./azure-demo-01.sh)

START_TIME=$SECONDS

ansible-playbook ~/github/ansible/1.3/playbook/azure/pb-azure-vn.yaml
cat ~/github/ansible/1.3/command/azure-demo-01.txt | parallel -k --lb "{}"

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo " "
echo "TotaL Duration:"
echo "$(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
echo " "
echo " "
