;; themes
;; Birth:  2024-10-13 18:53:16.951521897 +0800
;; Modify: 2024-10-13 18 +0800

;; nord-theme
(use-package nord-theme)

(add-to-list 'custom-theme-load-path (expand-file-name "~/.emacs.d/themes/")) ; add load path
(load-theme 'nord t) ; load theme

(provide '1a-theme)
