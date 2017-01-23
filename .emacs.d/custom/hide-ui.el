(menu-bar-mode -1)
;scroll-bar-mode doesn't exist in nw emacs in os x
(and (fboundp 'scroll-bar-mode) (scroll-bar-mode -1)) 
(and (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(show-paren-mode 1)
(column-number-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

(setq inhibit-startup-message t
      confirm-kill-emacs 'yes-or-no-p
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      kill-buffer-query-functions (remq
				   'process-kill-buffer-query-function
				   kill-buffer-query-functions)
      x-select-enable-clipboard t
      require-final-newline t)

