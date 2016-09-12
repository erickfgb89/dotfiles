(dolist
    (f (directory-files "~/.emacs.d/custom" t "^[[:word:]_-]+\\.el$"))
  (message "loading file: %s" f)
  (load f))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(my-long-line-face ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-tab-face ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-trailing-space-face ((((class color)) (:foreground "black" :weight bold :underline t))) t))
