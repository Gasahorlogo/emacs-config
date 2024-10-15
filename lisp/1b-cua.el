;; CUA mode
;; Birth:  2024-10-15 18:59:05.335584413 +0800
;; Modify: 2024-10-15 19 +0800

;; References:
;; 1) EmacsWiki: Cua Mode
;; https://www.emacswiki.org/emacs/CuaMode

(require 'cua)

(cua-mode t)
(transient-mark-mode 1)
(setq cua-auto-tabify-rectangles nil)
(setq cua-keep-region-after-copy t)

(provide '1b-cua)
