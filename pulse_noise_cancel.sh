#!/bin/bash

# /etc/pulse/default.pa
#
# load-module module-echo-cancel source_name=noechosource sink_name=noechosink
# set-default-source noechosource
# set-default-sink noechosink

pactl unload-module module-echo-cancel
pactl load-module module-echo-cancel \
	aec_method=webrtc source_name=noechosource sink_name=noechosink
pacmd set-default-source noechosource
pacmd set-default-sink noechosink
