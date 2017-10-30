;;http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
;;Install exuberant-ctags if ctags fails

(use-package projectile
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; projectile-speedbar-open-current-buffer-in-tree
(use-package projectile-speedbar)
