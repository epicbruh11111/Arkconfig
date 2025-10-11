# GDK BACKEND. Change to either wayland or x11 if having issues
BACKEND=wayland

# Check if rofi or yad is running and kill them if they are
if pidof rofi > /dev/null; then
  pkill rofi
fi

if pidof yad > /dev/null; then
  pkill yad
fi

# Launch yad with calculated width and height
GDK_BACKEND=$BACKEND yad \
    --center \
    --title="Cheat Sheet" \
    --no-buttons \
    --list \
    --column=Key: \
    --column=Description: \
    --column=Command: \
    --timeout-indicator=bottom \
"ESC" "close this app" "" \
" = " "SUPER KEY (Windows Key Button)" "(SUPER KEY)" \
" SHIFT K" "Searchable Keybinds" "(Search all Keybinds via rofi)" \
"SUPER + Enter" "Launch terminal" "" \
"SUPER + B" "Launch browser" "" \
"SUPER + O" "Launch notes app" "" \
"SUPER + C" "Launch code editor" "" \
"SUPER + S" "Launch alt editor or notification center" "" \
"SUPER + Q" "Close focused window" "" \
"SUPER + SHIFT + L" "Exit Hyprland session" "" \
"SUPER + E" "Open file manager" "" \
"SUPER + W" "Toggle floating mode" "" \
"SUPER + D" "Open app launcher (rofi/tofi)" "" \
"SUPER + J" "Toggle split mode (dwindle)" "" \
"SUPER + A" "Open emoji picker and copy to clipboard" "😄" \
"SUPER + V" "Clipboard manager via cliphist + tofi" "" \
"SUPER + P" "Color picker + copy to clipboard" "🎨" \
"SUPER + L" "Lock screen using hyprlock" "" \
"SUPER + ESC" "Launch logout menu (wlogout)" "" \
"CTRL + ESC" "Toggle waybar" "" \
"Print" "Screenshot full screen + copy to clipboard" "" \
"SUPER + Print" "Screenshot active window + copy to clipboard" "" \
"SUPER + ALT + Print" "Screenshot selected area + copy to clipboard" ""
