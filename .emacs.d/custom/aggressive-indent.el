(use-package aggressive-indent
	     :mode ( "\\.rb\\'" "\\.hs\\'" "\\.lhs\\'"
		     "\\.yml\\'" "\\.yaml\\'" "\\.java\\'"
		     "\\.js\\'" "\\.sh\\'" )
	     :config
	     (aggressive-indent-mode))

