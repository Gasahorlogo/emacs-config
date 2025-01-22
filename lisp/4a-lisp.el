;; lisp language preferences
;; Birth:  2024-10-13 20:14:16.718719292 +0800
;; Modify: 2025-01-22 18 +0800

;; ParEdit
;(use-package paredit
;  :config ;References: EmacsWiki
;  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;  (add-hook 'scheme-mode-hook           #'enable-paredit-mode))

;; Common Lisp
(setq inferior-lisp-program "sbcl") ; set default common lisp inferior

;; SLIME
(use-package slime
  :ensure t)

;; Stop SLIME's REPL from grabbing DEL,
;; which is annoying when backspacing over a '('
(defun override-slime-repl-bindings-with-paredit ()
(define-key slime-repl-mode-map
            (read-kbd-macro paredit-backward-delete-key) nil))
(add-hook 'slime-repl-mode-hook 'override-slime-repl-bindings-with-paredit)

;; Scheme
;; Chez-Scheme
(setq geiser-chez-binary "/usr/bin/chez-scheme")
(setq geiser-active-implementations '(chez))

;; provide
(provide '4a-lisp)
