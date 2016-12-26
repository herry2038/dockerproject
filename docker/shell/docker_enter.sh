if [ $# != 1 ] ; then
	echo "docker_enter.sh <docker_name>"
	exit  0
fi
sudo docker exec -t -i $1 /bin/bash
