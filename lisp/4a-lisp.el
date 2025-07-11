;; lisp language preferences
;; Birth:  2024-10-13 20:14:16.718719292 +0800
;; Modify: 2025-07-11 16 +0800

;; ParEdit
;(use-package paredit
;  :config                               ;References: EmacsWiki
;  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;  (add-hook 'scheme-mode-hook           #'enable-paredit-mode))

;; SLIME
(use-package slime
  :ensure t)

(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(slime-setup '(slime-fancy))

;; Common Lisp
(setq inferior-lisp-program "/usr/bin/ecl") ; set default common lisp inferior

;; Scheme
;; Geiser
(setq geiser-active-implementations '(chicken))

;(setq scheme-program-name "csi")

;; provide
(provide '4a-lisp)
