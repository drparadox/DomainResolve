#!binbash
#Domain resolve IP address
#Coded by Idris YILDIRIM
#IBB SOC Group

fileName=$1
dns=$2

if [ -z $fileName ];then
    fileName='.domains.txt'
fi

if [ -z $dns ];then
  dns='8.8.8.8'
fi


START_TIME=$SECONDS
rm -f DomainResults.csv NotUseDomainResults.csv
for DOMAIN in `cat $fileName`;
do
    IP=$(nslookup $DOMAIN $dnsegrep -i 'Address (S+)' awk '{print $2}'sed 'a;N;$!ba;sn g')
        if [ -z $IP ];then
        IP=''
        echo -e $DOMAINt$IP  NotUseDomainResults.csv
    fi
    echo -e $DOMAINt$IP  DomainResults.csv
done
echo ELAPSED_TIME=$(($SECONDS - $START_TIME))
