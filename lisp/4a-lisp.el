;; lisp language preferences
;; Birth:  2024-10-13 20:14:16.718719292 +0800
;; Modify: 2024-10-13 20 +0800

;; Common Lisp
(setq inferior-lisp-program "sbcl") ; set default common lisp inferior

; slime
(use-package slime
  :ensure t)

;; Scheme
;; Chez-Scheme
(setq geiser-chez-binary "/usr/bin/chez-scheme")
(setq geiser-active-implementations '(chez))

;; provide
(provide '4a-lisp)
