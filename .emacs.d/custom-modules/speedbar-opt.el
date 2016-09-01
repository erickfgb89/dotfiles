;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

;;speedbar options
(setq sr-speedbar-skip-other-window-p t)


(global-set-key
 (kbd "C-c s")
 'sr-speedbar-select-window)

(global-set-key
 (kbd "C-c f")
 'sr-speedbar-open)

(defun sr-speedbar-open-and-select ()
  (sr-speedbar-open)
  (sr-speedbar-select-window))


(provide 'speedbar-opt)
