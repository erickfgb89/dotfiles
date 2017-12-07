(menu-bar-mode -1)
;scroll-bar-mode doesn't exist in nw emacs in os x
(and (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(and (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(show-paren-mode 1)
(column-number-mode 1)
(fset 'yes-or-no-p 'y-or-n-p)

(setq-default indicate-buffer-boundaries t)

(setq inhibit-startup-message t
      confirm-kill-emacs 'yes-or-no-p
      inhibit-startup-message t
      inhibit-startup-echo-area-message t
      kill-buffer-query-functions (remq
                                   'process-kill-buffer-query-function
                                   kill-buffer-query-functions)
      x-select-enable-clipboard t
      visible-bell 1
      set-mark-command-repeat-pop 1
      require-final-newline t)

;; whitespace
(global-whitespace-mode 1)
(setq-default indent-tabs-mode nil)
(setq whitespace-style
      '(face
       tabs
       spaces
       trailing
       lines-tail
       ;space-before-tab::space
       newline
       indentation
       empty
       ;space-after-tab::space
       space-mark
       tab-mark
       newline-mark
       indentation::space))

(setq face-remapping-alist '((whitespace-tab . whitespace-space-before-tab)))


(setq sh-basic-offset 2
        sh-indentation 2)
