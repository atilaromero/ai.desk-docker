#!/bin/bash
xhost +
dkr ()
{
    docker run --rm -it -w "`pwd`" -v "`pwd`":"`pwd`":Z -e DISPLAY -e GDK_BACKEND -e GDK_SCALE -e GDK_DPI_SCALE -e QT_DEVICE_PIXEL_RATIO -e LANG=C.UTF-8 -e LC_ALL=C.UTF-8 --device /dev/dri --device /dev/snd -v /etc/localtime:/etc/localtime:ro -v /tmp/.X11-unix/:/tmp/.X11-unix/ "$@"
}
cd /opt/ai.desk/
dkr -v /operaoces/:/operacoes/:Z setecrs/ai.desk-env python ai.desk.py
