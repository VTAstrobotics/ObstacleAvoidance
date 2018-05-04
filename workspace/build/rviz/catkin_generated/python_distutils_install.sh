#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/hal/workspace/src/rviz"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/hal/workspace/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/hal/workspace/install/lib/python2.7/dist-packages:/home/hal/workspace/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/hal/workspace/build" \
    "/usr/bin/python" \
    "/home/hal/workspace/src/rviz/setup.py" \
    build --build-base "/home/hal/workspace/build/rviz" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/hal/workspace/install" --install-scripts="/home/hal/workspace/install/bin"
