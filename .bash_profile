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

source "/Volumes/Macintosh HD/Users/macinator/.bash_prompt"
