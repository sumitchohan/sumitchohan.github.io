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
echo "100" >  ocred_DE.txt
echo "100" > ocred_Elixir.txt
echo "100" > ocred_Gold.txt
				de=$(cat ocred_DE.txt)
				elixir=$(cat ocred_Elixir.txt)
				gold=$(cat ocred_Gold.txt)  
				#isth10=$(echo $th10| cut -d'_' -f 1)
				LogRemote "elixir - $elixir , gold - $gold , de - $de"
ReadBattleTest

				de=$(cat ocred_DE.txt)
				elixir=$(cat ocred_Elixir.txt)
				gold=$(cat ocred_Gold.txt)  
				#isth10=$(echo $th10| cut -d'_' -f 1)
				LogRemote "elixir - $elixir , gold - $gold , de - $de"
waitCount=15
svc power stayon true

