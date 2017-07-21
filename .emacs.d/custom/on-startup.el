(defun open-speedbar (proc evt)
  (sr-speedbar-open))

(add-hook
 'emacs-startup-hook ; not after-init-hook
 (lambda ()
   (set-process-sentinel
    (start-process "sleep" "*sleep*" "sleep" "2" )
    'open-speedbar)
   ))
