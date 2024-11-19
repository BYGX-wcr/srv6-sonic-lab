function remove_sonic_switch {
	SWNAME=$1

	docker stop sw-$SWNAME && docker rm sw-$SWNAME
	docker stop $SWNAME && docker rm $SWNAME

	for srv in `seq 0 31`; do

	SRV="$SWNAME-srv$srv"

	ip netns del $SRV

	done
}


function remove_host {
	SWNAME=$1

	docker stop $SWNAME && docker rm $SWNAME
}

remove_sonic_switch sonic10
remove_sonic_switch sonic20
remove_sonic_switch sonic21
remove_sonic_switch sonic11
remove_sonic_switch a0
remove_sonic_switch a1
remove_host h0
remove_host h1
