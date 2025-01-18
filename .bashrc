# Startup
#xrandr --output DP-2 --right-of DP-5
set -o vi
alias hib="sudo systemctl hibernate"

# Path Extensions:
export PATH="/home/chgarrettv/Repositories/Literate/bin:$PATH"
export PATH="/home/chgarrettv/.dotnet:$PATH"
export PATH="/home/chgarrettv/.steam/debian-installation/steamapps/common/Aseprite:$PATH"
export DOTNET_ROOT=$HOME/.dotnet

# QoL aliases
alias c='clear'
alias dog='echo "Woof!"'
alias sl='echo "Choo choo!"'
alias u='cd ..'
alias uu='cd ../..'
alias uuu='cd ../../..'
alias uuuu='cd ../../../..'
alias uuuuu='cd ../../../../..'
alias ff='find . -iname'
alias u='cd ..'
alias eb='exec bash'
alias k='kill %1'

# i3
# alias winid="xprop | grep -i 'class'"
alias winid='xprop | grep -i "class"'

# Git
alias gita='git add .'
alias gitai='git add -i'
alias gitau='git add -u'
alias gitb='git branch -a'
alias gitc='git checkout'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitcall='git commit -am'
alias gitcam='git commit --amend -m'
alias gitcamne='git commit --amend --no-edit'
alias gitcm='git commit -m'
alias gitfpa='git fetch --prune --all'
alias gitl='git log -n 10'
alias gitp='git push'
alias gitrbi='git rebase -i'
alias gits='git status'
alias sup='git submodule update --init --recursive'

# QGit:
alias q='qgit&'

# GIO:
alias g='gio open'

# Godot
alias godot='~/Repositories/godot/bin/godot.linuxbsd.editor.x86_64.mono'

# Makefiles:
alias m='echo make && make'
alias ma='echo make all && make all'
alias mc='echo make clean && make clean'
alias mca='echo make clean-all && make clean-all'
alias mcad='echo make clean-all docs && make clean-all docs'
alias mcao='echo make clean-all open && make clean-all open'
alias mcd='echo make clean-docs && make clean-docs'
alias mcf='echo make clean formal && make clean formal'
alias mcp='echo make clean project && make clean project'
alias mco='echo make clean open && make clean open'
alias mct='echo make clean test && make clean test'
alias md='echo make docs && make docs'
alias mdv='echo make docs-verbose && make docs-verbose'
alias mf='echo make formal && make formal'
alias mh='echo make help && make help'
alias mp='echo make project && make project'
alias mo='echo make open && make open'
alias mt='echo make test && make test'
alias ms='echo make simulate && make simulate'
alias mw='echo make waveforms && make waveforms'

# RISC-V
alias rvasm='riscv64-unknown-elf-asm'
alias rvobj='riscv64-unknown-elf-objdump'
alias rvgdb='riscv64-unknown-elf-gdb'
alias rvgcc='riscv64-unknown-elf-gcc'
alias rvld='riscv64-unknown-elf-ld'

# TMUX
alias tmuxs='tmux source ~/.tmux.conf'
alias tmuxa='tmux attach'
tmuxp () {
  #tmux source-file ~/.tmux/$1.conf
  sh ~/.tmux/$1.sh
}

# Unreal
alias unreal='~/Repositories/UnrealEngine/Engine/Binaries/Linux/UnrealEditor'

# Vim
alias v='vim -p'
alias vbrc='vim -p ~/.bashrc'
alias vbase='vim -p ~/.tmux/base.sh'
alias vvrc='vim -p ~/.vimrc'
alias vrc='vim -p ~/.vimrc'
alias vtrc='vim -p ~/.tmux.conf'
alias vi3='vim -p ~/.config/i3/config'
alias vw='vim -p ~/vimwiki/index.md'

# Vivado
alias srcv='source /tools/Xilinx/Vivado/2023.2/settings64.sh && which vivado'
alias vivado2022.1='source /tools/Xilinx/Vivado/2022.1/settings64.sh && which vivado'
alias vivado2023.1='source /tools/Xilinx/Vivado/2023.1/settings64.sh && which vivado'
alias vivado2023.2='source /tools/Xilinx/Vivado/2023.2/settings64.sh && which vivado'
source /tools/Xilinx/Vivado/2023.2/settings64.sh && which vivado
export LD_LIBRARY_PATH=$XILINX_VIVADO/lib/lnx64.o
