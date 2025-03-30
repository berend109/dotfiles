# =======================
# Fig Pre-Block (Keep at Top)
# =======================
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"

# =======================
# Custom Aliases
# =======================

# Laravel Sail alias
alias sail='bash vendor/bin/sail'

# Improved 'ls' alias (show all dotfiles, list view)
alias ls="ls -al"

# =======================
# Pomodoro Timer Functions
# =======================

# Work Timer
work() {
  local duration=$1
  if [ -z "$duration" ]; then
    echo "Set a timer: work <minutes>"
    return 1
  fi
  timer "${duration}m" && terminal-notifier -message 'Stand up, take a pee, or eat something' \
    -title 'Work time is up! Take a break 😊' \
    -sound Crystal
}

# Break Timer
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

# =======================
# Development Environment Setup
# =======================

# Load Fastfetch at startup
fastfetch

# Load GHCup environment if available
[ -f "$HOME/.ghcup/env" ] && source "$HOME/.ghcup/env"

# =======================
# C++ Build Helper Function
# =======================

cppbuild() {
    if [ $# -lt 2 ]; then
        echo "Usage: cppbuild <output_name> <source_file> [debug|release]"
        echo "Example (debug mode):   cppbuild myprog myprog.cpp debug"
        echo "Example (release mode): cppbuild myprog myprog.cpp release"
        return 1
    fi

    mode="${3:-debug}"  # Default to debug if no third argument is provided
    if [ "$mode" = "debug" ]; then
        clang++ -std=c++17 -g -o "$1" "$2"
        echo "Built in DEBUG mode"
    elif [ "$mode" = "release" ]; then
        clang++ -std=c++17 -O2 -o "$1" "$2"
        echo "Built in RELEASE mode"
    else
        echo "Invalid mode: Use 'debug' or 'release'"
        return 1
    fi
}

# =======================
# Fig Post-Block (Keep at Bottom)
# =======================
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
