;;(add-hook 'ruby-mode-hook 'flymake-ruby-load)
;; https://github.com/zenspider/enhanced-ruby-mode
(add-to-list 'auto-mode-alist
	     '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook
	  'robe-mode)

;;http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/
(projectile-global-mode)
(setq projectile-enable-caching t)

;;Install exuberant-ctags if ctags fails
(speedbar-add-supported-extension ".rb")

(when (eq system-type 'darwin)
  (setq projectile-tags-command "/usr/local/bin/ctags -Re -f \"%s\" %s"))
