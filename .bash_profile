# ##
# # Profiling bash_profile
# # https://mdjnewman.me/2017/10/debugging-slow-bash-startup-files/
# ###
# echo "Profiling bash_profile @ ~/.logs/bash_profile.$$.log..."
# exec 5> >(ts -i "%.s" >> "$HOME/.logs/bash_profile.$$.log")
# export BASH_XTRACEFD="5"
# set -x

##
# Execute bash configurations
# https://github.com/mathiasbynens/dotfiles
###
for file in ~/.{exports,path,sources,functions,aliases,complete,prompt,extra}; do
    [[ -r "$file" ]] && source "$file"
done

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s autocd
shopt -s globstar