#!/bin/sh

# if pwd is ~/src/blender/N3D, copy textures and fbx to ~/src/unity/N3D-Unity/Assets/Models folder
if [ "$PWD" = "/home/$(whoami)/src/blender/N3D" ]; then
    echo "copying files to unity project"
    cp -i ./n3d.fbx ~/src/unity/N3D-Unity/Assets/Models/N3D/
    cp -ri ./textures ~/src/unity/N3D-Unity/Assets/Models/N3D/
    echo "done"
else
    echo "please run this script in the blender project root"
fi

