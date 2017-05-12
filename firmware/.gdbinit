target extended-remote /dev/ttyACM0
mon swdp_scan
attach 1
monitor vector_catch disable hard
set mem inaccessible-by-default off
set print pretty
