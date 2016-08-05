;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

;;speedbar options
(setq sr-speedbar-skip-other-window-p t)


(global-set-key
 (kbd "C-c C-c s")
 'sr-speedbar-select-window)

(global-set-key
 (kbd "C-c C-c f")
 'sr-speedbar-open)


(provide 'speedbar-opt)
