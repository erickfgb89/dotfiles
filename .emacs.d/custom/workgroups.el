(setq wg-emacs-exit-save-behavior           'nil)      ; Options: 'save 'ask nil
(setq wg-workgroups-mode-exit-save-behavior 'nil)      ; Options: 'save 'ask nil

;; Mode Line changes
;; Display workgroups in Mode Line?
(setq wg-mode-line-display-on t)          ; Default: (not (featurep 'powerline))
(setq wg-flag-modified t)                 ; Display modified flags as well
(setq wg-mode-line-decor-left-brace "["
      wg-mode-line-decor-right-brace "]"  ; how to surround it
      wg-mode-line-decor-divider ":")

;;(workgroups-mode 0)


