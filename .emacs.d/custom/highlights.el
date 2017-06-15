;;https://www.emacswiki.org/emacs/highlight-chars.el
;;(require 'highlight-chars)

;;https://www.emacswiki.org/emacs/EightyColumnRule

(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode 1))

(setq frame-background-mode 'dark)
(load-theme 'solarized t)
(enable-theme 'solarized)

;;text highlights with ##
(font-lock-add-keywords
 'text-mode '(("##.*$" . font-lock-keyword-face)))

;; highlight tabs, long lines and trailing spaces
;; in the below listed modes
(mapc
 (lambda (mode)
   (font-lock-add-keywords
    mode
    '(("\t+" (0 'my-tab-face t))
      ("^.\\{81,\\}$" (0 'my-long-line-face t))
      ("[ \t]+$"      (0 'my-trailing-space-face t))
      ("# TODO.*$"    (0 'font-lock-keyword-face)))))
 '(c-mode
   java-mode
   haskell-mode
   shell-script-mode
   ruby-mode
   yaml-mode
   javascript-mode
   python-mode
   emacs-lisp-mode))

(setq-default show-trailing-whitespace t)
