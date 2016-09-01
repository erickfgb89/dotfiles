(mapc
 (lambda (shortcut)
   (global-set-key (kbd (car shortcut))
		   (cdr shortcut)))
 '(("C-S-o" . other-window)
   ("C-S-k" . kill-this-buffer)
   ("C-S-w" . kill-buffer-and-window)
   ("C-S-0" . delete-window)
   ("C-S-1" . delete-other-windows)
   ("C-S-e" . eshell)
   ("C-S-r" . ido-recentf-open)
   ("C-S-s" . sr-speedbar-open-and-select) ; from speedbar-opt (local)
   ("C-S-f" . find-file)
   ("C-S-s" . save-buffer)
   ("C-S-b" . switch-to-buffer)
   ("C-S-c" . caps-lock-mode)))

(global-set-key (kbd "M-g") 'goto-line)


(provide 'shortcuts)
