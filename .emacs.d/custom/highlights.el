;;https://www.emacswiki.org/emacs/highlight-chars.el
;;(require 'highlight-chars)

;;https://www.emacswiki.org/emacs/EightyColumnRule

(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))

;;text highlights with ##
(font-lock-add-keywords
 'text-mode '(("##.*$" . font-lock-keyword-face)))

;; highlight tabs, long lines and trailing spaces
;; in the below listed modes
;; (mapc
;;  (lambda (mode)
;;    (add-hook
;;     (make-symbol (concat (symbol-name mode) "-mode-hook"))
;;     (lambda ()
;;       (setq font-lock-keywords
;; 	    (append font-lock-keywords
;; 		    '(("\t+" (0 'my-tab-face t))
;; 		      ("^.\\{81,\\}$" (0 'my-long-line-face t))
;; 		      ("[ \t]+$"      (0 'my-trailing-space-face t))))))))
;;  '(c
;;    java
;;    haskell
;;    shell-script
;;    ruby
;;    yaml
;;    javascript
;;    emacs-lisp))

(add-hook 'ruby-mode-hook
            (function
             (lambda ()
               (setq font-lock-keywords
                     (append font-lock-keywords
                             '(("\t+" (0 'my-tab-face t))
                               ("^.\\{81,\\}$" (0 'my-long-line-face t))
                               ("[ \t]+$"      (0 'my-trailing-space-face t))))))))

