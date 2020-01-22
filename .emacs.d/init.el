;; add some exta memory for startup before gc
;; set debug on error/quit in case we run into something bad

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((gc-cons-threshold (* 25 1024 1024))
      (debug-on-error t)
      (debug-on-quit t))

  ;; Run the rest of our init from README.org
  (require 'org)
  (org-babel-load-file
   (expand-file-name "README.org" user-emacs-directory))

  (garbage-collect))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default)))
 '(ecb-options-version "2.50")
 '(package-selected-packages
   (quote
    (web-mode counsel browsh swiper hyperbole yaml-mode esup helm-robe robe-mode pug-mode helm-flycheck flycheck-mode helm-ag rubocop flycheck rinari smart-mode-line request focus workgroups2 use-package undo-tree terraform-mode sx sublimity solarized-theme robe restclient recentf-ext rbenv rainbow-delimiters racket-mode puppet-mode projectile-speedbar pollen-mode neotree multiple-cursors mode-icons markdown-preview-mode magit lua-mode js2-mode howdoi highlight-chars helm-projectile haskell-mode groovy-mode god-mode geeknote flymake-ruby enh-ruby-mode elixir-mode ediprolog ecb dockerfile-mode diminish dash-at-point company-inf-ruby column-marker color-theme-solarized cl-lib-highlight caps-lock aggressive-indent ace-jump-mode ac-inf-ruby))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
