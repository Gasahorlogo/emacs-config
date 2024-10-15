;;; init.el -*- lexical-binding: t -*-

;; This is a Lisp program from an initialization file for Emacs by Gasahorlogo.
;; Birth:  2024-09-30 18:50:42.142222749 +0800
;; Modify: 2024-09-30 19 +0800

;; References:
;; 1) GNU Emacs Manual 50.4 The Emacs Initialization File
;; https://www.gnu.org/software/emacs/manual/html_node/emacs/Init-File.html
;; 2) 为小窗优化的Emacs配置
;; https://radionoisee.github.io/cnt/emacs-mac.html

(mapc (lambda (dir)
	(add-to-list 'load-path (expand-file-name dir user-emacs-directory)))
      '("lisp"))

(tool-bar-mode 0)
(menu-bar-mode 0)

(require '0a-package-archives)
(require '1a-font)
(require '1a-line-numbers)
(require '1a-modeline)
(require '1a-preferences)
(require '1a-theme)
(require '1b-cua)
(require '1b-package)
(require '2a-file-system-browser)
(require '2b-undo-tree)
(require '4a-lisp)
(require '4a-markup)
(require '4a-ocamlformat)
(require '4a-sml-mode)
(require '4b-proof-general)
(require '5a-edit-server)

(provide 'init)

;;; init.el ends here

