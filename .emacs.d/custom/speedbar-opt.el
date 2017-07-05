;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

;;speedbar options
(setq
 sr-speedbar-skip-other-window-p t
 speedbar-directory-unshown-regexp "^\\.git$"
 speedbar-show-unknown-files t)

(sr-speedbar-open)

(speedbar-add-supported-extension
 (list ".rb"
       "Rakefile"
       ".sh"))
