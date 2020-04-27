status:
	systemctl status docker
start:
	systemctl start docker
stop:
	systemctl stop docker
rm_exited:
	docker rm $(docker ps -a -q -f status=exited)
prune:
	docker container prune
run:
	docker run --hostname vp1light --privileged -e DISPLAY=${DISPLAY} --volume="${HOME}/.Xauthority:/root/.Xauthority:rw" --volume /tmp/.X11-unix:/tmp/.X11-unix --rm -it bowen/vp1light:latest bash
run_detached:
	docker run -d -P --name ubuntu ubuntu:18.04
show_ports:
	docker port ubuntu
stop_detached:
	docker stop ubuntu
show_images:
	docker images
build:
	docker build -t bowen/vp1light .
