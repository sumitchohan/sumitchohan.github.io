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
rm ocred_DE.txt
rm ocred_Elixir.txt
rm ocred_Gold.txt
ReadBattleTest

				de=$(cat ocred_DE.txt)
				elixir=$(cat ocred_Elixir.txt)
				gold=$(cat ocred_Gold.txt)  
				#isth10=$(echo $th10| cut -d'_' -f 1)
				LogRemote "elixir - $elixir , gold - $gold , de - $de"
waitCount=15
svc power stayon true

