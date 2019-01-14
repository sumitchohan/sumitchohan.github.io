LogRemote "FILE_1"

echo "Trophy,674,82,23,69,255_255_255">Home.config
echo "Gold,749,1073,24,138,255_255_255">>Home.config
echo "Elixir,686,1082,26,132,255_255_255">>Home.config
echo "DE,624,1101,26,115,255_255_255">>Home.config
echo "Gems,565,1132,26,82,255_255_255">>Home.config


Read "Home"

		trophy=$(cat ocred_Trophy.txt)
		de=$(cat ocred_DE.txt)
		gold=$(cat ocred_Gold.txt)
		elixir=$(cat ocred_Elixir.txt)
		gems=$(cat ocred_Gems.txt)

LogRemote "Trophy - $trophy Gold - $gold Elixir - $elixir DE - $de Gems - $gems"
