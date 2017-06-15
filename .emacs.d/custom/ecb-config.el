;; Tmp-ish fix for still-active issue:
;; https://github.com/ecb-home/ecb/issues/10
(defun display-buffer-at-bottom--display-buffer-at-bottom-around
    (orig-fun &rest args)
"Bugfix for ECB: cannot use display-buffer-at-bottom',
calldisplay-buffer-use-some-window' instead in ECB frame."
(if (and ecb-minor-mode (equal (selected-frame) ecb-frame))
(apply 'display-buffer-use-some-window args)
(apply orig-fun args)))
(advice-add
 'display-buffer-at-bottom :around
 #'display-buffer-at-bottom--display-buffer-at-bottom-around)

(setq
 ecb-eshell-auto-activate t
 ecb-eshell-buffer-sync 'always
 ecb-layout-name "left15"
 ecb-compile-window-height 6
 ecb-compile-window-width 'edit-window
 ecb-compile-window-temporarily-enlarge 'after-selection
 ecb-windows-width 0.25
 ecb-auto-activate f
 ecb-other-window-behavior 'smart
 ecb-show-sources-in-directories-buffer 'always
 auto-expand-directory-tree 'best
 ecb-eshell-enlarge-when-eshell nil
 ecb-tip-of-the-day nil)

(ecb-activate)
