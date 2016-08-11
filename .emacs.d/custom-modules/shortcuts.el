(global-set-key
 (kbd "C-M-o")
 'other-window)

(mapc
 (lambda (shortcut)
   (global-set-key (kbd (car shortcut))
		   (cdr shortcut)))
 '(("C-M-o" . other-window)
   ("C-M-k" . kill-this-buffer)
   ("C-M-x" . kill-buffer-and-window)
   ("C-M-0" . delete-window)
   ("C-M-1" . delete-other-windows)
   ("C-M-e" . eshell)
   ("C-M-r" . ido-recentf-open)
   ("C-M-s" . sr-speedbar-open-and-select) ; from speedbar-opt (local)
   ("C-M-f" . find-file)
   ("C-M-s" . save-buffer)))



(provide 'shortcuts)
