FROM ubuntu:18.04
# install X11
RUN apt update && apt-get update
RUN echo "6\n31\n" | apt-get install -y software-properties-common
RUN echo "31\n1\n" | apt-get install -y xorg openbox
RUN apt-get install -y xauth
RUN apt-get install -y x11-apps
# install vp1 light
RUN add-apt-repository ppa:kaktusjoe/rootdist
RUN apt install -y vp1light
RUN apt-get -y install sudo
