
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(eval-when-compile
  (require 'use-package))
(require 'bind-key)

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
    (multiple-cursors helm-projectile ace-jump-mode helm undo-tree rainbow-delimiters js2-mode js-mode use-icons mode-icons howdoi sx projectile-speedbar projectile-mode ob-http magit terraform-mode rbenv use-package god-mode restclient company-shell company-inf-ruby groovy-mode projectile enh-ruby-mode dockerfile-mode ediprolog robe inf-ruby websocket markdown-mode yaml-mode workgroups2 sublimity sr-speedbar recentf-ext neotree markdown-preview-mode lua-mode highlight-chars haskell-mode geeknote flymake-ruby elixir-mode ecb dash-at-point column-marker color-theme-solarized cl-lib-highlight caps-lock ac-inf-ruby))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(my-long-line-face ((((class color)) (:foreground "white" :weight bold :underline t))) t)
 '(my-tab-face ((((class color)) (:foreground "white" :weight bold :underline t))) t)
 '(my-trailing-space-face ((((class color)) (:foreground "white" :weight bold :underline t))) t))

;;(setq spacemacs-start-directory "~/.emacs.d/spacemacs/")
;;(load-file (concat spacemacs-start-directory "init.el"))
