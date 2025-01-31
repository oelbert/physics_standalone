docker stop physics_standalone 1>/dev/null 2>/dev/null
docker rm physics_standalone 1>/dev/null 2>/dev/null
docker run -i -t --rm \
	--mount type=bind,source=`pwd`/turb,target=/work/turb \
	--mount type=bind,source=`pwd`/seaice,target=/work/seaice \
	--mount type=bind,source=`pwd`/microph,target=/work/microph \
	--mount type=bind,source=`pwd`/shalconv,target=/work/shalconv \
	--mount type=bind,source=`pwd`/lsm,target=/work/lsm \
	--mount type=bind,source=`pwd`/runfile,target=/work/runfile \
	--name=physics_standalone physics_standalone
