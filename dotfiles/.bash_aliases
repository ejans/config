alias clean='sudo apt-get autoclean; sudo apt-get autoremove'
alias update='sudo apt-get update; sudo apt-get upgrade -y; sudo youtube-dl -U'
alias minecraft='java -jar ~/Programs/Games/Minecraft/Minecraft.jar'
alias urbanterror='bash ~/Documents/.Shortcuts/urbanTerror.sh' 
alias casalomount='bash ~/Documents/.Shortcuts/casaloMount.sh'
alias cp='cp -r'
alias rm='rm -r'
alias youplay='bash ~/Documents/.Shortcuts/youPlay.sh $1'
alias youplayvideo='bash ~/Documents/.Shortcuts/youPlayVideo.sh $1'
alias shutdown='sudo poweroff'
alias vcp='vcp -R'
alias killall='killall -9'
alias tarp='tar -I pbzip2 $1 $2 $3'
alias KUL='cd $KUL'
alias mount='sudo mount -o umask=0'
alias umount='sudo umount'
alias dus='du -sh * | sort -k1,1rh'
alias screenfetch='bash ~/Documents/.Shortcuts/screenFetch.sh'
alias logcat='python ~/Documents/.Shortcuts/colored-adb-logcat/colored-adb-logcat.py'
alias KULBackup='bash ~/Documents/.Shortcuts/kulBackup.sh'
alias wiki='bash ~/Documents/.Shortcuts/wikisole.sh'
alias startup='~/Documents/.Shortcuts/startup.sh'
function mkdircd() {
	mkdir $@; 
	cd $@;
}
