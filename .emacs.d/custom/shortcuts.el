(setq custom-prefix "C-S-")
(mapc
 (lambda (shortcut)
   (global-set-key (kbd (car shortcut))
		   (cdr shortcut)))
 (list
  (cons (concat custom-prefix "o") 'other-window)
  (cons (concat custom-prefix "k") 'kill-this-buffer)
  (cons (concat custom-prefix "w") 'kill-buffer-and-window)
  (cons (concat custom-prefix "0") 'delete-window)
  (cons (concat custom-prefix "1") 'delete-other-windows)
  (cons (concat custom-prefix "2") 'split-window-below)
  (cons (concat custom-prefix "3") 'split-window-right)
  (cons (concat custom-prefix "e") 'eshell)
  (cons (concat custom-prefix "r") 'ido-recentf-open)
  (cons (concat custom-prefix "z") 'sr-speedbar-open-and-select)
  (cons (concat custom-prefix "f") 'find-file)
  (cons (concat custom-prefix "s") 'save-buffer)
  (cons (concat custom-prefix "b") 'switch-to-buffer)
  (cons (concat custom-prefix "c") 'caps-lock-mode)
  (cons (concat custom-prefix "x") 'kmacro-end-or-call-macro)))

(global-set-key (kbd "M-g") 'goto-line)


(provide 'shortcuts)
