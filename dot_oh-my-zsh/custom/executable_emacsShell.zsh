# Disable bracketed paste mode for dumb terminals (emacs shell)
if [[ $TERM = dumb ]]; then
    unset zle_bracketed_paste
fi
