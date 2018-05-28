#cd /sdcard/coc
cd /c/work/GH/sumitchohan.github.io/sh

echo %1

Greet()
{
	echo "Hello {0}!"
} 
echo

loop()
{
	retryIndex=1
	# retryCount=10000000
	retryCount=10
	retryDelay=2
	error="y"
	while [ $retryIndex -le $retryCount ]
	do 
	echo "index - $retryIndex";
	sleep $retryDelay	
	(( retryIndex++ ))
	if [ -e break.txt ]
	then
		break
	fi
	done 
}
loop & pid=$!
echo $pid 
