# VLC-inside-docker

This shell script will help you in running VLC Media Player inside docker.

Firstly, run the script base.sh on base machine/VM by providing the name of docker image and its version. mount all the additional volumes you want to mount using -v option. It is necessary to mount etc/machine-id, /tmp/.X11-unix/ these volumes along with your yum repository for downloading packages

-e DISPLAY=$DISPLAY signifies the environment variable and it is necessary to attach it --device /dev/snd, --device /dev/video0 denotes all the devices you want to attach with the docker.

When you run bash.sh, start and attach your docker by the following commands 
            docker start <docker_name> 
            docker attach <docker_name>
            
or run start.sh script

After starting and attaching the docker, install vlc software along with its dependencies.

inside_docker.sh script is run inside the docker to run VLC media player inside docker.

Try playing a song using the following command
     vlc <song_name>
