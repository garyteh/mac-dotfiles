# https://github.com/mathiasbynens/dotfiles

for file in ~/.{exports,path,sources,functions,aliases,complete,prompt,extra}; do
    [[ -r "$file" ]] && source "$file"
done

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s autocd
shopt -s globstar
