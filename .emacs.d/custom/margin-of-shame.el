;;(require 'column-marker)

(mapc (lambda (mode)
	(add-hook mode
		  (lambda ()
		    (interactive)
		    (column-marker-1 80))))
      '( ruby-mode-hook
	 java-mode-hook
	 lisp-mode-hook
	 text-mode-hook
	 haskell-mode-hook
	 literate-haskell-mode-hook
	 yaml-mode-hook ))

(global-set-key (kbd "C-c C-m")
		(lambda ()
		  (interactive)
		  (message "Adding column marker at 80")
		  (column-marker-1 80)))



