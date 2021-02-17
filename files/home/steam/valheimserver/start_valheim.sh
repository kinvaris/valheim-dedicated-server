#!/bin/bash
export templdpath=$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=./linux64:$LD_LIBRARY_PATH
export SteamAppId=892970
# Tip: Make a local copy of this script to avoid it being overwritten by steam.
# NOTE: You need to make sure the ports 2456-2458 is being forwarded to your server through your local router & firewall.
./valheim_server.x86_64 -name {{ valheim_server_name }} -port {{ valheim_server_port }} -nographics -batchmode -world {{ valheim_world_name }} -password {{ valheim_server_pass }} -seed {{ valheim_world_seed }}
export LD_LIBRARY_PATH=$templdpath

