echo "Hello Client"

dt=$(date '+%Y-%m-%d')
curl https://keyvalue.glitch.me/addKeyValue --data "key=k55&value=HelloFromAndroid$dt"




#LogRemote "FILE_6"
#rm log*
#rm error* 
#rm *.png
#cd ..
#rm log*
#rm error*
#rm *.png 
#cd coc
#LogRemote "Cleared" 
#curl -s -k https://raw.githubusercontent.com/sumitchohan/AndroidAutoSh/master/update.sh -o update.sh
#source update.sh  
#maxWaitCount=15
#svc power stayon true

