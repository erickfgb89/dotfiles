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


(setq semantic-default-submodes
      '(global-semanticdb-minor-mode
	global-semantic-mru-bookmark-mode
	global-semantic-highlight-func-mode
	global-semantic-stickyfunc-mode
	global-semantic-decoration-mode
	global-semantic-idle-local-symbol-highlight-mode
	global-semantic-idle-scheduler-mode
	global-semantic-idle-completions-mode
	global-semantic-idle-summary-mode
	global-semantic-show-parser-state-mode))
(semantic-mode)
