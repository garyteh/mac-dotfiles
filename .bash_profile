# ##
# # Profiling bash_profile (part 1)
# # https://mdjnewman.me/2017/10/debugging-slow-bash-startup-files/
# ###
# echo "Profiling bash_profile @ ~/.logs/bash_profile.$$.log..."
# exec 5> >(ts -i "%.s" >> "$HOME/.logs/bash_profile.$$.log")
# export BASH_XTRACEFD="5"
# set -x
# start_time=$(date +%s.%3N)

##
# Execute bash configurations
# https://github.com/mathiasbynens/dotfiles
###
for file in ~/.{evals,exports,path,sources,functions,aliases,complete,prompt,extra}; do
    [[ -r "$file" ]] && source "$file"
done

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s autocd
shopt -s globstar

# ##
# # Profiling bash_profile (part 2)
# # https://mdjnewman.me/2017/10/debugging-slow-bash-startup-files/
# ###
# end_time=$(date +%s.%3N)
# elapsed=$(echo "scale=3; $end_time - $start_time" | bc)
# echo "Sourcing bash_profile took ${elapsed}s.."
# set +x