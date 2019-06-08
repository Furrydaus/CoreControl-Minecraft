clear
PS3='Welcome to the Master Script! Please enter your choice:'
options=("Install Required Dependencies" "Run the installed Spigot Server" "BACKUP ALL SERVER FILES TO GITHUB" "QUIT")
select opt in "${options[@]}"
do

case $opt in
	"Install Required Dependencies")
	echo Installing Dependencies in 5 Seconds...
	sleep 1
	echo Installing Dependencies in 4 Seconds...
	sleep 1
	echo Installing Dependencies in 3 Seconds...
	sleep 1
	echo Installing Dependencies in 2 Seconds...
	sleep 1
	echo Installing Dependencies in 1 Seconds...
	sleep 1
	sudo apt-get update
	sudo apt-get install openjdk-7-jdk
	y
	sudo apt-get update && sudo apt-get install git-core build-essential zip curl python screen
	y
	clear
	echo Dependencies have been installed!
	;;
	"Run the installed Spigot Server")
        echo Starting Spigot Server...
        sleep 1
        java -Xmx3400M -jar spigot.jar nogui -o false
	;;
	"BACKUP ALL SERVER FILES TO GITHUB")
	cd scripts
	./backup.sh
	;;
	"QUIT")
        break
        ;;
    *) echo invalid option;;
 esac
done

