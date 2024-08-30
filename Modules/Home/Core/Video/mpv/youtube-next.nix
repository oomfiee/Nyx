{pkgs, lib, config, ...}:
{

xdg.configFile."${config.xdg.configHome}/mpv/script-opts/youtube-upnext.conf".text = with pkgs; ''
# KEY BINDINGS

# invoke or dismiss the quality menu
#toggle_menu_binding=ctrl+u
# move the menu cursor up
up_binding=UP
# move the menu cursor down
down_binding=DOWN
# select menu entry
select_binding=ENTER

# auto fetch recommended videos when opening a url
fetch_on_start=no

# auto load and add the "upnext" video to the playlist
auto_add=no

# formatting / cursors
cursor_selected=●
cursor_unselected=○
cursor_appended=▷
cursor_appended_selected=▶

# font size scales by window, if false requires larger font and padding sizes
scale_playlist_by_window=no

# playlist ass style overrides inside curly brackets, \keyvalue is one field, extra \ for escape in lua
# example {\\fnUbuntu\\fs10\\b0\\bord1} equals: font=Ubuntu, size=10, bold=no, border=1
# read http://docs.aegisub.org/3.2/ASS_Tags/ for reference of tags
# undeclared tags will use default osd settings
# these styles will be used for the whole playlist. More specific styling will need to be hacked in
#
# (a monospaced font is recommended but not required)
style_ass_tags={\\fnmonospace\\fs25}

# paddings for top left corner
text_padding_x=5
text_padding_y=5

# Screen dim when menu is open 0.0 - 1.0 (0 is no dim, 1 is black)
curtain_opacity=0.7

# how many seconds until the quality menu times out
menu_timeout=10

# base url for loading new urls, %s will be replaced with video id
youtube_url=https://www.youtube.com/watch?v=%s

# Fallback Invidious instance. Used if "upnext" could not be retrieved from the normal youtube website
# See https://api.invidious.io/ for alternatives
invidious_instance=https://inv.tux.pizza

# Keep the width of the window the same when the next video is played
restore_window_width=no

# On Windows wget.exe may not be able to check SSL certificates for HTTPS, so you can disable it here
check_certificate=yes


# Use a cookies file
# Same as youtube-dl --cookies or wget --load-cookies
# If you don't set this, the script may create a cookie file for you
# For example "C:\\Users\\Username\\cookies.txt"
# Or "C:/Users/Username/cookies.txt"
# Alternatively you can set this from the command line with --ytdl-raw-options=cookies=file.txt
# or --ytdl-raw-options-append=cookies=file.txt
# or in mpv.conf with ytdl-raw-options-append=cookies=file.txt
# If you want to use cookies from your browser you need to set both
# cookies and cookies-from-browser in mpv.conf or the command line:
# ytdl-raw-options-append=cookies=file.txt
# ytdl-raw-options-append=cookies-from-browser=edge
cookies=cookies.txt

# When a video is selected from the menu, the new video can be appended to the playlist
# or the playlist can be cleared and replaced with only the selected video.
# If yes, the video will be appended to the playlist. If no, the playlist will be cleared.
keep_playlist_on_select=yes

# What should happen if a video recommendation in uosc menu is clicked? Options are:
# submenu    --> show a submenu with play/upnext/append option
# append     --> append the video to the playlist
# insert     --> play the video after the current video
# play       --> append the video to the playlist and play it
# replace    --> play the video and clear the playlist
uosc_entry_action=submenu

# Should the uosc menu stay open after clicking a video recommendation?
uosc_keep_menu_open=no

# Don't play/append videos that are shorter than this time. Format is "HH:MM:SS" or "MM:SS"
#skip_shorter_than=00:30

# Don't play/append videos that are longer than this time. Format is "HH:MM:SS" or "MM:SS"
#skip_longer_than=07:00

# Also don't show the videos in the menu that are too short or too long
#hide_skipped_videos=yes

'';
}
