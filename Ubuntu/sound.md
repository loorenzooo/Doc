# Adjust bluetooth volume

pavucontrol

# pulse-audio

pulseaudio -h : help
pulseaudio -k : kill
pulseaudio -v -D --start

# pulse-audio equalizer

qpaeq

If needed add followning lines

load-module module-equalizer-sink
load-module module-dbus-protocol

to

sudo vi /etc/pulse/default.pa
~/.config/pulse/default.pa
