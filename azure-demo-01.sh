
START_TIME=$SECONDS

ansible-playbook -i inventory/hosts playbook/azure/pb-azure-vn.yaml
cat command/azure-demo-01.txt | parallel "{}"

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo " "
echo " TotaL Duration:"
echo "$(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
