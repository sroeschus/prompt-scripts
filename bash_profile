# .bash_profile
# bash_profile is for setting environment variables and anything else that
# should happen at login.  bash_profile is sourced only in login shells (e.g.,
# the shell started when you log in via SSH).  The main things that make sense
# to put in bash_profile are environment variable exports and startup programs.
# See https://fburl.com/bash for more information.

# Source bashrc to pull in configuration for interactive shell use (the bashrc
# will just return if the shell is not interactive).
if [[ -f ~/.bashrc ]]; then
  source ~/.bashrc
fi

# Export environment variables, start background programs, etc.
export EDITOR=nvim
export VISUAL='nvim'

# Required for mu4e attachements
export XDG_DOWNLOAD_DIR=~/Maildir/Attachments

# Add more executables to the path.
export PATH=$PATH:$HOME/bin
export PATH=/opt/fb-qemu/bin:${PATH}
export PATH=$PATH:$HOME/.emacs.d/bin

# Set up personal aliases, functions, etc.  See https://fburl.com/bash.
# ...(put your own stuff here!)...
alias ..="cd .."
alias configp="cp config.prod3 .config"
alias configv="cp config.qemu2 .config"
alias cpl="scripts/checkpatch.pl *.patch"
alias cs='cscope -k -d'
alias doom='~/.emacs.d/bin/doom'
alias e=emacs
alias et="emacs -nw"
alias ew="emacs"
alias fbc="cd ~/fbsource/fbcode"
alias fbs="cd ~/fbsource"
alias gb="git branch"
alias gcc12="source /opt/rh/gcc-toolset-9/enable"
alias gen="scripts/clang-tools/gen_compile_commands.py"
alias glo="git log --oneline"
alias gf='git format-patch -1'
alias gs="git status"
alias io="cd ~/liburing"
alias l="cd ~/linux"
alias lio="cd ~/liburing.upstream"
alias lu="cd ~/linux.upstream"
alias m="make -j$(nproc) tar-pkg"
alias mc='make clean'
alias mcs='make cscope'
alias n="nvim"
alias sb="source ~/.bash_profile"
alias se="vim ~/.bash_profile"
alias v='virtme-run --kimg arch/x86_64/boot/bzImage --rwdir=/home/shr/liburing.master --rwdir=/home/shr/fio  -a "nokaslr"  --qemu-opts -m 16384 -smp 4'
alias vnvme='virtme-run --kimg arch/x86_64/boot/bzImage --rwdir=/home/shr/liburing.master --rwdir=/home/shr/fio  -a "nokaslr"  --qemu-opts -m 16384 -smp 4 -drive file=/home/shr/nvme.img,format=raw,if=none,id=NVME1 -device nvme,drive=NVME1,serial=1234'


. "$HOME/.cargo/env"
