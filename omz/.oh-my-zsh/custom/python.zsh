export PATH=~/.pyenv/shims:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH

dir=$(ls $HOME | grep OneDrive)
test -d "$HOME/$dir" && test -f "$HOME/$dir/vault.zsh" && source "$HOME/$dir/vault.zsh"
