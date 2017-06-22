;;(add-hook 'ruby-mode-hook 'flymake-ruby-load)
;; https://github.com/zenspider/enhanced-ruby-mode
(add-to-list 'auto-mode-alist
	     '("\\(?:\\.rb\\|ru\\|rake\\|thor\\|jbuilder\\|gemspec\\|podspec\\|/\\(?:Gem\\|Rake\\|Cap\\|Thor\\|Vagrant\\|Guard\\|Pod\\)file\\)\\'" . enh-ruby-mode))
(add-hook 'enh-ruby-mode-hook
	  'robe-mode)
