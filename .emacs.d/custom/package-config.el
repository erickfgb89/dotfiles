;;Initialize package manager
(require 'package)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))

(package-refresh-contents)
(package-initialize)

;;installed packages
(mapc
 (lambda (pkg)
   (package-install pkg))
 '(column-marker
   haskell-mode
   markdown-mode
   markdown-preview-mode
   neotree
   recentf-ext
   sr-speedbar
   websocket
   yaml-mode
   sublimity
   workgroups2))


;;sublimity
;;(require 'sublimity-map)
;;(require 'sublimity-scroll)
;;(require 'sublimity-attractive) ;buffer truncate & center
;;(sublimity-mode 1)

(provide 'package-config)
