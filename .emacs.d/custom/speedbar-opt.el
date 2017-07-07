;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

(use-package sr-speedbar
  :init
  (setq
   sr-speedbar-skip-other-window-p t
   speedbar-directory-unshown-regexp "^\\.git$"
   speedbar-show-unknown-files t)
  :config
  (sr-speedbar-open)
  (speedbar-add-supported-extension
   (list ".rb"
	 "Rakefile"
	 ".sh")))
