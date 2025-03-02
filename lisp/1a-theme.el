;; themes
;; Birth:  2024-10-13 18:53:16.951521897 +0800
;; Modify: 2024-03-02 14 +0800

;; nord-theme
;(require 'nord-theme)
;(use-package nord-theme)

;; about file `nord-theme.el', see
;; https://github.com/cariandrum22/emacs/blob/e6977cf36f0cea5b290497add76f1db03b522a77/nord-theme.el 

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/")) ; add load path
(load-theme 'nord t) ; load theme

(provide '1a-theme)
