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

TestRun1()
{ 
failedCount=0
	LogRemote "$1_Starting"
	Log1 "Starting Run.. $1" 
shouldLoose="n"
looseCount=0

	Init
	StopCOC
	#am start -n com.x0.strai.frep/.FingerActivity
	StartCOC	
	Log1 "Trying Home"
	Home
	#SwitchID $1
	Zoom	
	Log1 "Reached Home"	


	Read "Home"

		trophy=$(cat ocred_Trophy.txt)
		de=$(cat ocred_DE.txt)
		gold=$(cat ocred_Gold.txt)
		elixir=$(cat ocred_Elixir.txt)
		gems=$(cat ocred_Gems.txt)

	LogRemote "T - $trophy G - $gold E - $elixir D - $de"

    	Tap 80 50
	sleep .5
	#WaitFor "FindAMatch" "" 20
	#Act "FindAMatch" "Find"
	Tap 178 257
	battleFound=$(WaitFor "Battle" "" 20)

    Read "Battle"
    de=$(cat ocred_DE.txt)
				elixir=$(cat ocred_Elixir.txt)
				gold=$(cat ocred_Gold.txt)  
				#isth10=$(echo $th10| cut -d'_' -f 1)
				LogRemote "elixir - $elixir , gold - $gold , de - $de"
}
curl -s -k https://raw.githubusercontent.com/sumitchohan/AndroidAutoSh/master/update.sh -o update.sh
source update.sh 
TestRun1
waitCount=15
svc power stayon true

