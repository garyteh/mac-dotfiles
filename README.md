# Installation
```shell
git clone --bare <git-repo-url> $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

# Helpful commands
## Find all MANPATH from brew
It will uniquely print by the order: libexec, share, gnuman, man
```shell
find -L /usr/local/opt -type d -not -type l \( -name 'gnuman' -o -name 'man' \) | sort -t'/' -k5 | sort -t'/' -k5,5 -u
```

# Reference 
- https://www.atlassian.com/git/tutorials/dotfiles