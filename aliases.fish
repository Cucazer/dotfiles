# Quick edits
alias ea 'vim ~/.config/fish/aliases.fish'
alias ef 'vim ~/.config/fish/config.fish'
alias eg 'vim ~/.gitconfig'
alias ev 'vim ~/.vimrc'

alias vim-norc 'vim -u NORC'
alias vim-none 'vim -u NONE'

function pdftext
    pdftotext -layout $argv[1] -
end

function serve
    if test (count $argv) -ge 1
        if python -c 'import sys; sys.exit(sys.version_info[0] != 3)'
            /bin/sh -c "(cd $argv[1] && python -m http.server)"
        else
            /bin/sh -c "(cd $argv[1] && python -m SimpleHTTPServer)"
        end
    else
        python -m SimpleHTTPServer
    end
end

alias df 'command df -m'
alias j jobs
alias l ls
alias ll 'ls -la'
#alias ls 'command ls -FG'
alias su 'command su -m'

function lsd -d 'List only directories (in the current dir)'
    command ls -d */ | sed -Ee 's,/+$,,'
end

alias g git
alias c clear
alias v vim

alias m make
alias mr 'make run'

function vimff
    vim (ffind -tf $argv)
end

function fa
    ffind -tf
end

function vf
    f $argv | selecta | xargs -o vim
end

function vfa
    fa $argv | selecta | xargs -o vim
end

alias gti git
alias a 'git amend --allow-empty'
alias gst 'git status'
alias gc 'git commit'
alias gpl 'git pull'
alias gps 'git push'

function git-search
    git log -S"$argv" --pretty=format:%H | map git show 
end

function cleanpycs
    find . -name '.git' -prune -o -name '__pycache__' -delete
    find . -name '.git' -prune -o -name '*.py[co]' -delete
end

alias json 'prettify-json'
alias map 'xargs -n1'
alias collapse "sed -e 's/  */ /g'"
alias cuts 'cut -d\ '

# Directories {{{

function cdff --description "cd's into the current front-most open Finder window's directory"
    cd (ff $argv)
end


alias cd.. 'cd ..'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'

alias md 'mkdir -p'
function take
    set -l dir $argv[1]
    mkdir -p $dir; and cd $dir
end
alias cx 'chmod +x'
alias 'c-x' 'chmod -x'

# }}}

function manpdf
	set tempfile (mktemp)
	man -t $argv[1] | ps2pdf - $tempfile
	xdg-open $tempfile
end
