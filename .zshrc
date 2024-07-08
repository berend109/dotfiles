# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# https://gist.github.com/bashbunni/f6b04fc4703903a71ce9f70c58345106
# Mac setup for pomo

work() {
local duration=$1
if [ -z "$duration" ]; then
    echo "Zet een timer tijd: work <minuten>"
    return 1
fi
timer "${duration}m" && terminal-notifier -message 'Stand up take a pee or eat something' \
    -title 'Work time is up! Take a Break 😊' \
    -sound Crystal
}
rest() {
    local duration=$1
    if [ -z "$duration" ]; then
        echo "Please specify the duration in minutes. Usage: rest <minutes>"
        return 1
    fi
    timer "${duration}m" && terminal-notifier -message 'Take your drink with you if you want, but stop eating' \
        -title 'Break is over! Get back to work 😬' \
        -sound Crystal
    }

#alias work="timer 50m && terminal-notifier -message 'Stand up take a pee or eat something'\
#        -title 'Work Time is up! Take a Break 😊'\
#        -sound Crystal"
#alias rest="timer 10m && terminal-notifier -message 'Take you drink with you if you want, bot stop eating'\
#        -title 'Break is over! Get back to work 😬'\
#        -sound Crystal"
#export PATH="$HOME/.emacs.d/bin:$PATH" #Doom Emacs

[ -f "/Users/berend/.ghcup/env" ] && source "/Users/berend/.ghcup/env" # ghcup-env

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

