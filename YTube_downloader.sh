#!bin/bash

#AlockDj 

# Colors
# ----------------------------------------
 BL='\e[01;90m' &>/dev/null ; # Black
 R='\e[01;91m'  &>/dev/null ; # Red
 G='\e[01;92m'  &>/dev/null ; # Green
 Y='\e[01;93m'  &>/dev/null ; # Yellow
 B='\e[01;94m'  &>/dev/null ; # Blue
 P='\e[01;95m'  &>/dev/null ; # Purple
 C='\e[01;96m'  &>/dev/null ; # Cyan
 W='\e[01;97m'  &>/dev/null ; # White
 LG='\e[01;37m' &>/dev/null ; # Light Gray
 N='\e[0m'      &>/dev/null ; # Null
 L='\033[7m'    &>/dev/null ; #Lines
 X='\033[0m'    &>/dev/null ; #Closer
 
 clear
 
 echo -e $R"-----------------------------------------------\n"$N
 echo -e $y" |           YTube Downloader                  | \n"$N
 echo -e $y" |                v 1.0                        | \n"$N 
echo -e $y " |		  ##AlockDj##                      | \n"$N
 echo -e $r"------------------------------------------------\n"$N
 
 
 
 clear
 #pakages download
 
 echo -e " Pakages are Download"

 
 pkg update && pkg upgrade -y
 pkg install python python-pip -y
 
 clear
 #yt-dlp download required for youtube video download

 pip install yt-dlp
 pip install yt-dlp -U
 
 
 clear
 sleep 0.2
 echo -e "setup requried files ...."

 mkdir /data/data/com.termux/files/home/storage/shared/YouTube

clear
sleep 0.2


 echo -e $Y$L"\n Creating youtube-dl config... \n"$N
		rm -rf ~/.config/yt-dlp
		mkdir -p ~/.config/yt-dlp
 sleep 1.5



 echo -e $Y$L"\n Getting config file... \n"$N

 cp config -P /data/data/com.termux/files/home/.config/yt-dlp
 
 cd /data/data/com.termux/files/home/.config/yt-dlp
 chmod +x config

 sleep 1

 echo -e $Y$L"\n Creating bin folder... \n"$N

		mkdir ~/bin

 sleep 1.5

 echo -e $Y$L"\n Getting files...\n"$N
 rm -rf /data/data/com.termux/files/home/bin/termux-url-opener
 mv termux-url-opener -P /data/data/com.termux/files/home/bin

 cd /data/data/com.termux/files/home/bin
 chmod +x termux-url-opener
 	
 clear
echo -e $Y$L"\n Finishing configuration..." 

 sleep 3.5

 echo -e $G"\n   Installation Finished...\n"$N
 echo -e $G "\n Now Share YouTube Link in termux and download your choice quality "
 kill -1 $PPID

 
