(add-hook 'ruby-mode-hook 'robe-mode)
(add-hook 'robe-mode-hook 'ac-robe-setup)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-hook 'ruby-mode-hook 'company-mode)
(eval-after-load 'company
  '(push 'company-robe company-backends))

;;http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
(projectile-global-mode)
(setq projectile-enable-caching t)

;;Install exuberant-ctags if ctags fails

(setq rbenv-installation-dir "/usr/local/bin/")
(defadvice inf-ruby-console-auto (before activate-rbenv-for-robe activate)
  (rbenv-use-corresponding))

(when (eq system-type 'darwin)
  (setq projectile-tags-command "/usr/local/bin/ctags -Re -f \"%s\" %s"))
