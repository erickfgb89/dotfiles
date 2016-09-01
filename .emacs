(dolist
    (f (directory-files "~/.emacs.d/custom" t "^[[:word:]_-]+\\.el$"))
  (message "loading file: %s" f)
  (load f))
