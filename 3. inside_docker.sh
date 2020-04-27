#!/bin/bash

export QT_X11_NO_MITSHM=1
sed -i 's/geteuid/getppid/' /usr/bin/vlc
