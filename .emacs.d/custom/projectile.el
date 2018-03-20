(require 'shortcuts)

;;http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
;;Install exuberant-ctags if ctags fails

(use-package projectile
  :config
  (projectile-global-mode)
  (setq projectile-enable-caching t))

;; projectile-speedbar-open-current-buffer-in-tree
(use-package projectile-speedbar :disabled)

;; https://github.com/bbatsov/helm-projectile
(use-package helm-projectile
  :config
  (add-shortcuts
   '(("p p" . helm-projectile-switch-project)
     ("p b" . helm-projectile-switch-to-buffer)
     ("p g" . helm-projectile-grep)
     ("p f" . helm-projectile-find-file)
     ("p t" . helm-projectile-find-tag)))
  :init
  (helm-projectile-on))
