#!/bin/bash

# === CONFIG ===
WALLPAPER_DIR="$HOME/arch-hyprland/wallpapers"
SYMLINK_PATH="$HOME/.config/hypr/current_wallpaper"

cd "$WALLPAPER_DIR" || exit 1

# === handle spaces name
IFS=$'\n'

# === ICON-PREVIEW SELECTION WITH ROFI, SORTED BY NEWEST ===
SELECTED_WALL=$(for a in $(ls -t *.jpg *.png *.gif *.jpeg 2>/dev/null); do echo -en "$a\0icon\x1f$a\n"; done | rofi -dmenu -p "")
[ -z "$SELECTED_WALL" ] && exit 1
SELECTED_PATH="$WALLPAPER_DIR/$SELECTED_WALL"

# === SET WALLPAPER ===
#pgrep -a awww-daemon || awww-daemon &
#matugen image "$SELECTED_PATH"
matugen image "$SELECTED_PATH" --source-color-index 0
pgrep -x awww-daemon >/dev/null || awww-daemon &

sleep 0.3

awww img "$SELECTED_PATH"

matugen image "$SELECTED_PATH"

# === CREATE SYMLINK ===
mkdir -p "$(dirname "$SYMLINK_PATH")"
ln -sf "$SELECTED_PATH" "$SYMLINK_PATH"
