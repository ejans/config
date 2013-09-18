alias clean='sudo apt-get autoclean; sudo apt-get autoremove'
alias update='sudo apt-get update; sudo apt-get upgrade -y; sudo youtube-dl -U'
alias minecraft='java -jar ~/Programs/Games/Minecraft/Minecraft.jar'
alias urbanterror='sh ~/Documents/.Shortcuts/UrbanTerror.sh' 
alias casalomount='bash ~/Documents/.Shortcuts/casaloMount.sh'
alias cp='cp -r'
alias rm='rm -r'
alias youplay='sh ~/Documents/.Shortcuts/YouPlay.sh'
alias youplayvideo='sh ~/Documents/.Shortcuts/YouPlayVideo.sh $1'
alias shutdown='sudo poweroff'
alias vcp='vcp -R'
alias killall='killall -9'
alias tarp='tar -I pbzip2 $1 $2 $3'
alias KUL='cd $KUL'
alias mount='sudo mount'
alias umount='sudo umount'
alias dus='du -sh * | sort -k1,1rh'
alias screenfetch='sh ~/Documents/.Shortcuts/ScreenFetch.sh'
alias logcat='python ~/Documents/.Shortcuts/colored-adb-logcat/colored-adb-logcat.py'
alias KULBackup='sh ~/Documents/.Shortcuts/KulBackup.sh'
function mkdircd() {
	mkdir $@; 
	cd $@;
}
