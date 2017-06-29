(require 'shortcuts)

(global-unset-key (kbd "C-M-w"))
(global-unset-key (kbd "C-M-t"))
(global-unset-key (kbd "C-M-p")) ;newline-and-indent

(add-shortcuts
 (list
  (cons "o" 'other-window)
  (cons "k" 'kill-this-buffer)
  ;;I don't currently use this, so meh. I'll choose another
  ;(cons "w" 'kill-buffer-and-window)
  (cons "0" 'delete-window)
  (cons "1" 'delete-other-windows)
  (cons "2" 'split-window-below)
  (cons "3" 'split-window-right)
  (cons "r" 'ido-recentf-open)
  (cons "f" 'find-file)
  (cons "s" 'save-buffer)
  (cons "b" 'switch-to-buffer)
  (cons "c" 'caps-lock-mode)
  (cons "x" 'kmacro-end-or-call-macro)
  (cons "z" 'repeat)
  (cons "t d" 'ecb-goto-window-directories)
  (cons "t s" 'ecb-goto-window-sources)
  (cons "t h" 'ecb-goto-window-history)
  (cons "t m" 'ecb-goto-window-methods)
  (cons "g s" 'magit-status)
  (cons "g c" 'magit-commit)
  (cons "g p" 'magit-push)
  (cons "g d" 'magit-pull)
  (cons "w s" 'workgroups-mode)
  (cons "w c" 'wg-create-workgroup)
  (cons "w o" 'wg-switch-to-workgroup)
  (cons "w k" 'wg-kill-workgroup)
  (cons "w w" 'wg-kill-workgroup-and-buffers)
  (cons "p f" 'projectile-find-file)
  (cons "p b" 'projectile-switch-to-buffer)
  (cons "p s" 'sr-speedbar-select-window)
  )
 )

(global-set-key (kbd "C-M-/") 'comment-or-uncomment-region)
(global-set-key (kbd "C-?") 'comment-or-uncomment-region)
(global-set-key (kbd "M-g") 'goto-line)
(global-set-key (kbd "RET") 'newline-and-indent)


