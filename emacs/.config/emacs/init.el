;; add some exta memory for startup before gc
;; set debug on error/quit in case we run into something bad

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
   '("fee7287586b17efbfda432f05539b58e86e059e78006ce9237b8732fde991b4c" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "57a29645c35ae5ce1660d5987d3da5869b048477a7801ce7ab57bfb25ce12d3e" "efcecf09905ff85a7c80025551c657299a4d18c5fcfedd3b2f2b6287e4edd659" "4c56af497ddf0e30f65a7232a8ee21b3d62a8c332c6b268c81e9ea99b11da0d3" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" default))
 '(ecb-options-version "2.50")
 '(package-selected-packages
   '(mocha typescript-mode sr-speedbar rjsx-mode key-chor key-chord graphviz-dot-mode restclient-mode elpher avy robe-projectile web-mode counsel browsh swiper hyperbole yaml-mode esup helm-robe robe-mode pug-mode helm-flycheck flycheck-mode helm-ag rubocop flycheck rinari smart-mode-line request focus workgroups2 use-package undo-tree terraform-mode sx sublimity solarized-theme robe restclient recentf-ext rbenv rainbow-delimiters racket-mode puppet-mode projectile-speedbar pollen-mode neotree multiple-cursors mode-icons markdown-preview-mode magit lua-mode js2-mode howdoi highlight-chars helm-projectile haskell-mode groovy-mode god-mode geeknote flymake-ruby enh-ruby-mode elixir-mode ediprolog ecb dockerfile-mode diminish dash-at-point company-inf-ruby column-marker color-theme-solarized cl-lib-highlight caps-lock aggressive-indent ace-jump-mode ac-inf-ruby)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
