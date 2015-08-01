#sabToCouchPotato
##Description
Compatible with both Sickbeard and Sickrage. Have you already got sabToSickbeard working? Want the same integration for SABnzbd+ and CouchPotato as quickly as possible? This is perfect for you.

This script notifies CouchPotato after SABnzbd+ finishes downloading a movie. Very minimalistic. Does not handle failed downloads. This is designed to get the job done quick and dirty without any bells and whistles. If you are looking for a more robust solution check out [nzbToMedia.](https://github.com/clinton-hall/nzbToMedia) 

##Linux Installation
	git clone git@github.com:renegaed/usenet.git && cd usenet
	cd sabToCouchpotato
	chmod +x sabToCouchpotato.bash
	vi sabToCouchpotato.bash

Enter your CouchPotato details: **Host, Port, API Key, SSL ON/OFF**

##Test it out!
	./sabToCouchpotato.bash

Check your CouchPotato logs 

	tail /path/to/couchpotato/logs/CouchPotato.log

#Configure with SABnzbd+
Here I am going to assume you already have sabToSickbeard set up.  
This means in SABnzbd+ under Config -> Folders -> Post-Processing Scripts Folder -> *points to Sickbeard/Sickrage autoProcessTV Folder*

##Add sabToCouchpotato to Sickbeard's autoProcessTV
	sudo ln -s /path/to/sabToCouchpotato.bash /path/to/sickbeard/autoProcessTV

In SABnzbd+ go to Config -> Categories -> Add the following entry:  
**Category:** movies  
**Priority:** Default  
**Processing:** +Delete  
**Script:** sabToCouchpotato.bash  
**Folder/Path:** *your_destination_path*