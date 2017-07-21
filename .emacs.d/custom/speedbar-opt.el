;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

(use-package sr-speedbar
  :init
  (setq
   sr-speedbar-skip-other-window-p t
   speedbar-directory-unshown-regexp "^\\.git$"
   speedbar-show-unknown-files t)
  :config
  (speedbar-add-supported-extension
   (list ".rb"
	 "Rakefile"
	 ".sh")))

(setq sr-speedbar-width-x 50)
(setq sr-speedbar-max-width 50)
(setq sr-speedbar-default-width 50)

