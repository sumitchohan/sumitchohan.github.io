LogRemote "FILE_5"
#rm log*
#rm error* 
#rm *.png
#cd ..
#rm log*
#rm error*
#rm *.png 
#cd coc
#LogRemote "Cleared"
curl -s -k https://raw.githubusercontent.com/sumitchohan/AndroidAutoSh/master/update.sh -o update.sh
source update.sh
ReadBattleTest
waitCount=15
svc power stayon true

