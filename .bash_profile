##
# Environment (export only)
# https://github.com/mathiasbynens/dotfiles
###
for file in ~/.{exports,path,manpaths,pcpaths,lflags,cflags}; do
  [[ -r "$file" ]] && source "$file"
done

# Load interactive config
if [[ -r ~/.bashrc ]]; then
  source ~/.bashrc
fi
