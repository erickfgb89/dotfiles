(setq custom-prefix "C-M-")
(mapc
 (lambda (shortcut)
   (global-set-key (kbd (concat custom-prefix (car shortcut)))
		   (cdr shortcut)))
 (list
  (cons "o" 'other-window)
  (cons "k" 'kill-this-buffer)
  (cons "w" 'kill-buffer-and-window)
  (cons "0" 'delete-window)
  (cons "1" 'delete-other-windows)
  (cons "2" 'split-window-below)
  (cons "3" 'split-window-right)
  (cons "e" 'eshell)
  (cons "r" 'ido-recentf-open)
  (cons "z" 'sr-speedbar-select-window)
  (cons "f" 'find-file)
  (cons "s" 'save-buffer)
  (cons "b" 'switch-to-buffer)
  (cons "c" 'caps-lock-mode)
  (cons "x" 'kmacro-end-or-call-macro)
  (cons "g d" 'ecb-goto-window-directories)
  (cons "g s" 'ecb-goto-window-sources)
  (cons "g h" 'ecb-goto-window-history)
  (cons "g m" 'ecb-goto-window-methods)))


(global-set-key (kbd "M-g") 'goto-line)

