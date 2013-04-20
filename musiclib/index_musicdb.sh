#!/bin/bash

#
# At startup, perform indexing of mp3 files in the music database and use it
# to build the default playlist
#

# Note: playlist is in xspf format

LOCATION=/radio/store
PLAYLIST_FILE=/radio/playlist.xspf

cat > $PLAYLIST_FILE << EOL
<?xml version="1.0" encoding="UTF-8"?>
<playlist xmlns="http://xspf.org/ns/0/" xmlns:vlc="http://www.videolan.org/vlc/playlist/ns/0/" version="1">
	<title>Default playlist</title>
        <trackList>
EOL

find $LOCATION -name \*.mp3 -exec echo "<track> <location>file://{}</location> </track>" >> $PLAYLIST_FILE \;

cat >> $PLAYLIST_FILE << EOL
	</trackList>
</playlist>
EOL
