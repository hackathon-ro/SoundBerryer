SoundBerryer
===========

Authors:
----------

- Sergiu Costea
- Mircea Urse
- Vlad Tudose
- Valentin Gosu

Description:
----------

This project is an FM broadcaster which you can load onto your Raspberry Pi and create your own FM Music Station.
This is a *software* project, as it doesn't involve any external device (except a simple wire)


Required packages:
vlc, samba, samba-common


Install:
----------

Step 1.
=======

After installing the required packages you need to create a new writeable 
samba share in /radio/store. This will hold the music collection.


Step 2.
=======

Copy some mp3 files on the samba share.


Step 3.
=======

To start the radio stream you can either:
  * restart the Raspberry PI to automatically index the music database
and start playing the default playlist
  * start the player and create a new playlist manually using the web
interface


Step 4.
=======

The radio stream can run on its own. If you want to control it directly,
you need to access the 10.10.99.45:8080 webpage using a browser (your
IP may vary)

Note:
In order to access the web interface you need to edit /etc/vlc/lua/http/.hosts and uncomment the last 2 lines. Please keep in mind that by doing this anyone can access the web interface, change your song and explore the files on your raspberry pi.


Step 5.
=======

Enjoy low fidelity FM radio wherever you may be :-)


Thanks
-------

http://www.icrobotics.co.uk/wiki/index.php/Turning_the_Raspberry_Pi_Into_an_FM_Transmitter

