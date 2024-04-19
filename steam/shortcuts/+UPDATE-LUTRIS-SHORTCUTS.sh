#!/bin/bash

# update app launchers
github_url="https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/"
target_directory="/userdata/roms/conty/"
# List of .sh files to download
sh_files=(
"Antimicrox.sh"
"Audacity.sh"
"Balena-Etcher.sh"
"Blender.sh"
"Boilr.sh"
"Bottles.sh"
"Brave.sh"
"Chiaki.sh"
"FileManager-Dolphin.sh"
"FileManager-DoubleCmd.sh"
"FileManager-Krusader.sh"
"FileManager-Nemo.sh"
"FileManager-PCManFM.sh"
"FileManager-Thunar.sh"
"Filezilla.sh"
"Firefox.sh"
"Flatpak-Config.sh"
"FreeFileSync.sh"
"GameHub.sh"
"Geforce Now.sh"
"Gimp.sh"
"Google-Chrome.sh"
"Gparted.sh"
"Greenlight.sh"
"Gthumb.sh"
"Handbrake.sh"
"Heroic Game Launcher.sh"
"Hulu.sh"
"Inkscape.sh"
"Kdenlive.sh"
"Kodi.sh"
"Libreoffice.sh"
"Lutris.sh"
"Microsoft-Edge.sh"
"Minigalaxy.sh"
"Moonlight.sh"
"Netflix.sh"
"OBS Studio.sh"
"Peazip.sh"
"Play on Linux 4.sh"
"Protonup-Qt.sh"
"Qbittorrent.sh"
"Qdirstat.sh"
"Shotcut.sh"
"Smplayer.sh"
"Spotify.sh"
"Steam Big Picture Mode.sh"
"Steam Diagnostic.sh"
"Steam.sh"
"SteamTinker Launch (settings).sh"
"SublimeText.sh"
"Terminal-Kitty.sh"
"Terminal-Lxterminal.sh"
"Terminal-Tabby.sh"
"Terminal-Terminator.sh"
"Thunderbird.sh"
"TigerVNC.sh"
"VLC.sh"
"WineGUI.sh"
"Zoom.sh"
)
# List of .sh files to remove
old_sh_files=(
  "Antimicrox.sh"
  "Audacity.sh"
  "Balena-Etcher.sh"
  "Boilr.sh"
  "Brave.sh"
  "Firefox.sh"
  "GameHub.sh"
  "Geforce Now.sh"
  "Gimp.sh"
  "Google-Chrome.sh"
  "Gparted.sh"
  "Greenlight.sh"
  "Heroic Game Launcher.sh"
  "Inkscape.sh" 
  "Kdenlive.sh"
  "Kodi.sh"
  "Libreoffice.sh"
  "Lutris.sh"
  "Microsoft-Edge.sh"
  "Minigalaxy.sh"
  "Moonlight.sh"
  "OBS Studio.sh"
  "Opera.sh"
  "PCManFM (File Manager).sh"
  "Peazip.sh"
  "Play on Linux 4.sh"
  "Protonup-Qt.sh"
  "Qbittorrent.sh"
  "Qdirstat.sh"
  "Smplayer.sh"
  "Shotcut.sh"
  "Steam Big Picture Mode.sh"
  "Steam.sh"
  "SteamTinker Launch (settings).sh"
  "Terminal.sh"
  "Thunderbird.sh"
  "VLC.sh"
  "Zoom.sh"
)
mkdir -p "$target_directory"
  # Remove old version .sh files
  for file in "${old_sh_files[@]}"; do
    rm "${target_directory}${file}" 2>/dev/null
  done
    for file in "${sh_files[@]}"; do
      # Replace spaces with '%20' for URL encoding
      encoded_file=$(echo "$file" | sed 's/ /%20/g')
      echo "Downloading $file..."
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O "${target_directory}${file}" "${github_url}${encoded_file}" &
      sleep 0.05
    done
      dos2unix "${target_directory}"/*.sh 2>/dev/null
        chmod 777 "${target_directory}"/*.sh 2>/dev/null
# update apps/systems:
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/pro/steam/batocera-conty-patcher.sh https://raw.githubusercontent.com/uureel/batocera.pro/main/steam/build/batocera-conty-patcher.sh &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_systems_arch.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_systems_arch.cfg &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_features_arch.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_features_arch.cfg &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_systems_steam2.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_systems_steam2.cfg &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_features_steam2.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_features_steam2.cfg &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Arch.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/Arch.keys &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Lutris.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/Lutris.keys &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Lutris.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/lutris.keys &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Heroic2.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/Heroic2.keys &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Heroic2.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/heroic2.keys &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/steam2.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/steam2.keys &
    wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/steam.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/steam.keys &
    # lutris
    if [[ -e /userdata/system/configs/emulationstation/es_systems_lutris.cfg ]]; then 
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_systems_lutris.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_systems_lutris.cfg &
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_features_lutris.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_features_lutris.cfg &
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Lutris.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/Lutris.keys &
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Lutris.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/lutris.keys &
    fi
    # heroic
    if [[ -e /userdata/system/configs/emulationstation/es_systems_heroic2.cfg ]]; then 
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_systems_heroic2.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_systems_heroic2.cfg &
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/emulationstation/es_features_heroic2.cfg https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/es_features_heroic2.cfg &
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Heroic2.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/Heroic2.keys &
        wget -q --tries=30 --no-check-certificate --no-cache --no-cookies -O /userdata/system/configs/evmapy/Heroic2.keys https://github.com/uureel/batocera.pro/raw/main/steam/shortcuts/es_configs/keys/heroic2.keys &
    fi 
        wait
            dos2unix /userdata/system/configs/evmapy/*.keys 2>/dev/null
            dos2unix /userdata/system/pro/steam/batocera-conty-patcher.sh 2>/dev/null
                chmod 777 /userdata/system/pro/steam/batocera-conty-patcher.sh 2>/dev/null

# merge ~/.local/share/applications/* and ~/Desktop/* for scanning
scan=/tmp/.conty-scandir
rm -rf "$scan" 2>/dev/null
mkdir -p "$scan" 2>/dev/null
cp -r ~/.local/share/applications/*.desktop "$scan"/ 2>/dev/null
cp -r ~/Desktop/*.desktop "$scan"/ 2>/dev/null

# Specify the directory to scan and the output file
directory_to_scan="$scan"
output_file="/userdata/system/pro/steam/lutris_list.txt"

# Check if the directory exists
if [ ! -d "$directory_to_scan" ]; then
    echo "Error: Directory '$directory_to_scan' does not exist."
    exit 1
fi

# Remove existing output file
rm -f "$output_file"

# Iterate through .desktop files in the specified directory
for file_path in "$directory_to_scan"/*.desktop; do
    # Check if the file exists
    if [ -f "$file_path" ]; then
        # Extract the filename without extension
        filename=$(basename "$file_path" .desktop)
        # Extract the relevant information using grep and sed
        exec_line=$(grep -E '^Exec=(env LUTRIS_SKIP_INIT=1 )?lutris lutris:rungame(id)?/' "$file_path" | sed -E "s/^Exec=(env LUTRIS_SKIP_INIT=1 )?lutris (lutris:rungame(id)?\/.+)/$filename \2/p")
        if [ -n "$exec_line" ]; then
            # Append the information to the output file
            echo "$exec_line" >> "$output_file"
        fi
    fi
done

# Full path to lutris_list.txt
lutris_list_file="/userdata/system/pro/steam/lutris_list.txt"

# Read each line from lutris_list.txt
while IFS= read -r line; do
    # Extract game_name and lutris_url_part
    game_name=$(echo "$line" | awk -F ' lutris:' '{print $1}')
    lutris_url_part=$(echo "$line" | awk -F ' lutris:' '{print $2}')

    # Remove unwanted parts from game_name (e.g., net.lutris., numbers, and hyphens)
    # This simplifies the name to a more common form
    common_name=$(echo "$game_name" | sed -E 's/net\.lutris\.//g' | sed -E 's/[-.][0-9]+//g' | sed 's/[^a-zA-Z0-9 ]//g' | tr '[:upper:]' '[:lower:]' | sed 's/ /_/g')

    # Append .sh to form the script filename
    script_filename="${common_name}.sh"

    # Create the script content without an undesired trailing quote
    script_content="#!/bin/bash
#------------------------------------------------
batocera-mouse show
#------------------------------------------------
/userdata/system/pro/steam/conty.sh \\
--bind /userdata/system/containers/storage /var/lib/containers/storage \\
--bind /userdata/system/flatpak /var/lib/flatpak \\
--bind /userdata/system/etc/passwd /etc/passwd \\
--bind /userdata/system/etc/group /etc/group \\
--bind /var/run/nvidia /var/run/nvidia \\
--bind /userdata/system /home/batocera \\
--bind /sys/fs/cgroup /sys/fs/cgroup \\
--bind /userdata/system /home/root \\
--bind /etc/fonts /etc/fonts \\
--bind /userdata /userdata \\
--bind /newroot /newroot \\
--bind / /batocera \\
bash -c 'prepare && ulimit -H -n 819200 && ulimit -S -n 819200 && sysctl -w fs.inotify.max_user_watches=8192000 vm.max_map_count=2147483642 fs.file-max=8192000 >/dev/null 2>&1 && LUTRIS_SKIP_INIT=1 dbus-run-session /opt/lutris/bin/lutris lutris:$lutris_url_part'
#------------------------------------------------
batocera-mouse hide
#------------------------------------------------

"
 
   #  LUTRIS COMMAND env LUTRIS_SKIP_INIT=1 lutris lutris:$lutris_url_part


    # Create the script file
    script_path="/userdata/roms/lutris/$game_name.sh"
    echo "$script_content" > "$script_path"
    chmod +x "$script_path"
    echo "Script created: $script_path"
done < "$lutris_list_file"
echo "Script execution completed. Check $output_file for the result."

# Clean up file names
# Directory containing the files
dir="/userdata/roms/lutris"

# Navigate to the directory
cd "$dir"

# Loop through each .sh file in the directory
for file in *.sh; do
    # Strip the 'net.lutris.' prefix and the '-[number].' suffix before the file extension, and replace hyphens with spaces
    new_name=$(echo "$file" | sed -E 's/net\.lutris\.//;s/-(1|2|3|4|5|6|7|8|9)\.sh$/.sh/;s/-/ /g')

    # Rename the file
    mv "$file" "$new_name"
done

rm -rf "$scan" 2>/dev/null

curl http://127.0.0.1:1234/reloadgames




   



