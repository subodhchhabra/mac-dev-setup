# Add Homebrew `/usr/local/bin` and User `~/bin` to the `$PATH`
PATH=/usr/local/bin:$PATH

# rvm shit
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# postgresql server
alias pgdown="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgup="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

# ipython qtconsole
alias ipy='ipython qtconsole --ConsoleWidget.font_family="Consolas" --ConsoleWidget.font_size=13 --pylab=inline'

# vhosts
alias hosts='sudo vim /etc/hosts'
alias vhosts='sudo vim /etc/apache2/extra/httpd-vhosts.conf'

# cleanup aliases
# remove .DS_Store recursively
alias rmdss='sudo find . -name '*.DS_Store' -type f -delete'
# remove .swo recursively
alias rmswo='sudo find . -name '*.swo' -type f -delete'
# remove .swp recursively
alias rmswp='sudo find . -name '*.swp' -type f -delete'

# servinator
alias servinator='ssh root@162.243.63.153'

#copy working directory
alias cwd='pwd | tr -d "\r\n" | pbcopy'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# List all files colorized in long format
alias ll='ls -lh'

# List all files colorized in long format, including dot files
alias la="ls -lha"

# List only directories
alias lsd='ls -l | grep "^d"'

# Always use color output for `ls`
alias ls="command ls ${colorflag}"
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

function github() {
#call from a local repo to open the repository on github in browser
 giturl=$(git config --get remote.origin.url)
 if [ "$giturl" == "" ]
   then
    echo "Not a git repository or no remote.origin.url set"
    exit 1;
 fi
 giturl=${giturl/git\@github\.com\:/https://github.com/}
 giturl=${giturl/\.git//}
 echo $giturl
 open $giturl
}

source "/Volumes/Macintosh HD/Users/macinator/.bash_prompt"
