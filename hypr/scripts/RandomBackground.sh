
#!/bin/bash

# Directory containing your wallpapers
WALLPAPER_DIR="$HOME/Pictures/Backgrounds"

# Pick a random image
RANDOM_PIC=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Ensure hyprpaper is running
if ! pgrep -x "hyprpaper" > /dev/null; then
    hyprpaper &
    sleep 0.5 # Give it a moment to start
fi

# Load and set the wallpaper
hyprctl hyprpaper preload "$RANDOM_PIC"
hyprctl hyprpaper wallpaper ",$RANDOM_PIC"

# Unload old wallpapers to keep your M2's RAM clean
hyprctl hyprpaper unload all
