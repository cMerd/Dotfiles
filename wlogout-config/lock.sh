
#!/bin/bash

# Close wlogout
pkill -f wlogout
nohup swaylock --effect-blur 6x6 &

# Start swaylock in the background and detach it from the terminal
