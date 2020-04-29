# Installation
```shell
git clone --bare <git-repo-url> $HOME/.cfg
git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
```

# Reference 
- https://www.atlassian.com/git/tutorials/dotfiles