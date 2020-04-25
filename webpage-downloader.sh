#!/bin/bash
# Author: github.com/wwwhtml
# Updated: April 21, 2020
#
#
clear
mkdir ~/Desktop/downloaded-webpages
clear
cd ~/Desktop/downloaded-webpages
while x=1
do
	clear
	echo "+------------------------------------------------------------------+"
	echo "| This script downloads webpages from websites for local viewing.  |"
	echo "+------------------------------------------------------------------+"
	echo ""
	echo "DISCLAIMER: For educational purposes only."
	echo "This script works when ran against the NYTimes, LATimes," 
	echo "WashingtonPost, etc., but it might be illegal to do that."
	echo ""
	echo "Usage:"
	echo "1. Input the URL to download, then press ENTER." 
	echo "2. This directory $(pwd) will open up for you."
	echo "4. Inside the directory locate, and double click the downloaded webpage."
	echo ""
	echo "Troubleshooting:"
	echo "If the downloaded page doesn't open, you may need to manually "
	echo "add the extension .html to it. Then try again. -Also, when copying the URL,"
	echo "avoid copying the tracking string that usually is after the extension .html."
	echo ""
	echo ""
	echo ""
	read -p "Input the URL, then press ENTER: " url
	curl -# -O $url
	open ~/Desktop/downloaded-webpages
done
