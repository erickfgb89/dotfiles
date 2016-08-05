;;Initialize package manager
(require 'package)
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
(require 'sublimity-map)
(require 'sublimity-scroll)
;;(require 'sublimity-attractive) ;buffer truncate & center
(sublimity-mode 1)

;; workgroups
(workgroups-mode 1)

(provide 'package-config)
