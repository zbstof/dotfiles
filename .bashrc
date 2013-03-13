alias vim='C:\Program Files (x86)\Vim\vim73\gvim.exe'
alias gvim='C:\Program Files (x86)\Vim\vim73\gvim.exe'
alias g='git'
alias b='buildr'
shopt -s histverify

function timer_start {
  timer=${timer:-$SECONDS}
}

function timer_stop {
  timer_show=$(($SECONDS - $timer))
  unset timer
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

#PS1='[last: ${timer_show}s][\w]$ '
