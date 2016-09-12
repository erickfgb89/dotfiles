;;; For other options
;;; https://www.emacswiki.org/emacs/SrSpeedbar

;;speedbar options
(setq sr-speedbar-skip-other-window-p t)


(defun sr-speedbar-open-and-select ()
  (sr-speedbar-open)
  (sr-speedbar-select-window))

(global-set-key
 (kbd "C-c s")
 'sr-speedbar-open-and-select)



