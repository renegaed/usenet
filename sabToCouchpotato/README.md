#sabToCouchpotato
##Description
Compatible with both Sickbeard and Sickrage.  
I do not like the CouchPotato renamer's behaviour of watching your download directory every x minutes. I prefer the renamer to run only when a movie is ready for post-processing, thereby reducing unnecessary disk reads. This script does just that. Also this script eliminates the delay between a movie downloading in SABnzbd+ and Couchpotato post-processing. If you already have sabToSickbeard working then you can set up sabToCouchPotato in minutes.

This script is intentionally minimalistic. Does not handle failed downloads. This is designed to get the job done quick and dirty without any bells and whistles. If you are looking for a more robust solution check out [nzbToMedia.](https://github.com/clinton-hall/nzbToMedia) 

##Linux Installation
###Edit sabToCouchpotato.bash
	git clone git@github.com:renegaed/usenet.git && cd usenet/sabToCouchpotato
	chmod +x sabToCouchpotato.bash
	vi sabToCouchpotato.bash

Enter your CouchPotato details: **Host, Port, API Key, SSL ON/OFF**

###Create scripts folder

	mkdir -p ~/bin/scripts && cd ~/bin/scripts
	mv /path/to/sabToCouchpotato.bash ~/bin/scripts

###Link sabToSickbeard files to scripts folder
	sudo ln -s /path/to/sickbeard/autoProcessTV/autoProcessTV.cfg ~/bin/scripts
	sudo ln -s /path/to/sickbeard/autoProcessTV/sabToSickBeard.py ~/bin/scripts

You should now have the following files in your scripts folder:

 - sabToCouchpotato.bash
 - autoProcessTV.cfg
 - sabToSickBeard.py

##Test it out!
	./sabToCouchpotato.bash

Check your CouchPotato logs 

	tail /path/to/couchpotato/logs/CouchPotato.log

#Configure with SABnzbd+
###Set SABNnzbd+ Post-Processing Scripts Folder
Config -> Folders -> Post-Processing Scripts Folder -> `/home/<user>/bin/scripts`

###Update your categories
Config -> Categories -> Add the following entry:

**Category:** movies  
**Priority:** Default  
**Processing:** +Delete  
**Script:** sabToCouchpotato.bash  
**Folder/Path:** *your_destination_path*

#Turn CouchPotato Continuous Folder-Scanning Off
In CouchPotato go to Settings -> Renamer -> Rename downloaded movies

Set Run Every -> `0` (disabled)  
Set Force Every -> `0` (disabled)