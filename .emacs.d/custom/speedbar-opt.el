;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

(use-package sr-speedbar
  :init
  (setq
   sr-speedbar-skip-other-window-p t
   speedbar-directory-unshown-regexp "^\\.git$"
   speedbar-show-unknown-files t
   sr-speedbar-width-x 50
   sr-speedbar-max-width 50
   sr-speedbar-default-width 50)
  :config
  (speedbar-add-supported-extension
   (list ".rb"
         "Rakefile"
         ".sh"))
  (set-process-sentinel
   (start-process "sleep" "*sleep*" "sleep" "2" )
   'open-speedbar))


