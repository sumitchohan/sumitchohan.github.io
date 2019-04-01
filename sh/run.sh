LogRemote "FILE_5"

curl -s -k https://raw.githubusercontent.com/sumitchohan/AndroidAutoSh/master/update.sh -o update.sh
source update.sh

svc power stayon true
