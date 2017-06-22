(add-hook
 'emacs-startup-hook
 (lambda ()
   ;; disabling ecb due to minibuffer completions with emacs 25.1
   ;;(ecb-activate)
   (projectile-global-mode)
   ))
