;;https://www.emacswiki.org/emacs/highlight-chars.el
;;(require 'highlight-chars)

;;https://www.emacswiki.org/emacs/EightyColumnRule
(custom-set-faces
 '(my-tab-face
   ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-trailing-space-face
   ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-long-line-face
   ((((class color)) (:foreground "black" :weight bold :underline t))) t))


(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))

;;text highlights with ##
(font-lock-add-keywords
 'text-mode '(("##.*$" . font-lock-keyword-face)))

(mapc
 (lambda (mode)
   (add-hook
    (make-symbol (concat (symbol-name mode) "-mode-hook"))
    (lambda ()
      (setq font-lock-keywords
	    (append font-lock-keywords
		    '(("\t+" (0 'my-tab-face t))
		      ("^.\\{81,\\}$" (0 'my-long-line-face t))
		      ("[ \t]+$"      (0 'my-trailing-space-face t))))))))
 '(c
   java
   haskell
   shell-script
   ruby
   yaml
   javascript
   emacs-lisp))





