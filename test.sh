
START_TIME=$SECONDS

sleep 10

ELAPSED_TIME=$(($SECONDS - $START_TIME))

echo " "
echo "TotaL Duration:"
echo "$(($ELAPSED_TIME/60)) min $(($ELAPSED_TIME%60)) sec"
