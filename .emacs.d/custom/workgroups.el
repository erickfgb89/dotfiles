(use-package workgroups2
  :config
  (setq wg-emacs-exit-save-behavior nil             ; Options: 'save 'ask nil
        wg-workgroups-mode-exit-save-behavior nil   ; Options: 'save 'ask nil
        wg-mode-line-display-on t                   ; Default: (not (featurep 'powerline))
        wg-flag-modified t                          ; Display modified flags as well
        wg-mode-line-decor-left-brace "["
        wg-mode-line-decor-right-brace "]"          ; how to surround it
        wg-mode-line-decor-divider ":")
  (add-shortcuts
   '(("w i" . workgroups-mode)
     ("w c" . wg-create-workgroup)
     ("w o" . wg-switch-to-workgroup)
     ("w k" . wg-kill-workgroup)
     ("w w" . wg-kill-workgroup-and-buffers))))
