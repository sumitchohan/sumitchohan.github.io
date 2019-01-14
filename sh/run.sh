LogRemote "FILE_2"


Run()
{
	LogRemote "$1_Starting"
	Log1 "Starting Run.. $1" 
	Init
	StopCOC
	#am start -n com.x0.strai.frep/.FingerActivity
	StartCOC	
	Log1 "Trying Home"
	Home
	sleep 10
	Zoom	
	Log1 "Reached Home"	


	Read "Home"

		trophy=$(cat ocred_Trophy.txt)
		de=$(cat ocred_DE.txt)
		gold=$(cat ocred_Gold.txt)
		elixir=$(cat ocred_Elixir.txt)
		gems=$(cat ocred_Gems.txt)

	LogRemote "Trophy - $trophy Gold - $gold Elixir - $elixir DE - $de Gems - $gems"


	#SwitchID $1 
	#Loose $1
	quickTrainYPos=805
	if [ "$1" = "2" ]
	then
		quickTrainYPos=997
	fi
	Tap 180 50
	sleep 0.5
	
	Log1 "IsReadyForAttack $1 .. taking snapshot"	
	#SendMessage "snapshot.sh"
	ready=$(IsReadyForAttack)	
	LogRemote "$1_Ready - $ready"
	if [ "$ready" = "y" ]
	then
		Tap 697 $quickTrainYPos
		sleep 0.5
		Tap 410 1085
		Tap 700 1130
		Attack $1
		sleep 60
		StopCOC
		Home
		Zoom
		Tap 180 50
		sleep 0.5
		Tap 697 $quickTrainYPos
		sleep 0.5
		Tap 410 1085
		Tap 700 1130
		sleep 1
		StopCOC
	else
		echo "not ready"	
		LogRemote "Not Ready $1 .."	
		#SendMessage "snapshot.sh"
		Tap 697 $quickTrainYPos
		sleep 1
		Tap 410 1085
		sleep 1
		Tap 410 1085
		sleep 1
		Tap 700 1130
	fi
	LogRemote "$1_Done"
}
