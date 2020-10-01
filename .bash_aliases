alias git="LANG=en_US.utf8 git"
alias cls='clear'
alias py='py3'
alias py2='python2'
alias py3='python3'
alias py.server='python3 -m http.server'
#alias cat='bat'
#alias rm='rm -i'
alias clear.cache='sudo bash -c "echo 1 > /proc/sys/vm/drop_caches"'
alias mozc.dict='/usr/lib/mozc/mozc_tool --mode=dictionary_tool'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias weather.taipei='curl http://v2.wttr.in/Taipei'

alias apt.list.upgradable='apt list --upgradable'
alias apt.list.installed='apt list --installed 2>&1 | tail -n+3'
alias apt.auto='apt autoclean && apt autoremove'

alias unzip.big5='unzip -O cp950'
alias unzip.gb='unzip -O cp936'
alias unzip.jp='unzip -O cp932'
alias unzip.kr='unzip -O cp949'

# wine
alias wine.jp='LANG=ja_JP.utf8 wine'
alias winetricks32='WINEARCH=win32 WINEPREFIX=~/GameVM32 winetricks'
alias wine32='WINEARCH=win32 WINEPREFIX=~/GameVM32 wine'
alias wine32.jp='LANG=ja_JP.utf8 wine32'

# docker
alias docker.clean.images='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-compose.down-up='docker-compose down && docker-compose up -d'
alias docker-compose.restart='docker-compose restart'

# ffmpeg
alias ffmpeg.test='_ffmpeg_test () { ffmpeg -i "$1" -c copy -f null -; }; _ffmpeg_test'
alias ffmpeg.to.mp4='_ffmpeg_to_mp4 () { local j=$(basename "$1"); ffmpeg -i "$j" "+$j"; }; _ffmpeg_to_mp4'
alias ffmpeg.concat.encode.mp4='ffmpeg -safe 0 -f concat -i <(find "$PWD" -type f -name '"'"'*.mp4'"'"' -printf "file '"'"'%p'"'"'\n" | sort) -c:v libx265 -c:a libvo_aacenc $(mktemp -u -p "$PWD" --suffix='"'"'.mp4'"'"')'
alias ffmpeg.concat.mp4='ffmpeg -safe 0 -f concat -i <(find "$PWD" -type f -name '"'"'*.mp4'"'"' -printf "file '"'"'%p'"'"'\n" | sort) -c copy $(mktemp -u -p "$PWD" --suffix='"'"'.mp4'"'"')'

# 3rd party name alias
alias imgoptim.jpg='jpegoptim -m95 *.jpg *.jpeg'
alias imgoptim.png='optipng *.png'
alias imgoptim.png2='pngquant *.png'
alias qrdecode='zbarimg'
alias webp.encode='cwebp'
alias webp.decode='dwebp'
