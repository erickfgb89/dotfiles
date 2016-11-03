
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list
 'load-path
 "~/.emacs.d/custom/lib")

(load "~/.emacs.d/custom/package-config.el")

(dolist
    (f (directory-files "~/.emacs.d/custom" t "^[[:word:]_-]+\\.el$"))
  (message "loading file: %s" f)
  (load f))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.50")
 '(package-selected-packages
   (quote
    (elixir-mode magit ecb caps-lock highlight-chars lua-mode workgroups2 sublimity yaml-mode websocket sr-speedbar recentf-ext neotree markdown-preview-mode markdown-mode haskell-mode column-marker))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(my-long-line-face ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-tab-face ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-trailing-space-face ((((class color)) (:foreground "black" :weight bold :underline t))) t))
