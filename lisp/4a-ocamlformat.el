;; ocamlformat
;; Birth:  2024-10-13 20:37:02.563129249 +0800
;; Modify: 2024-10-13 20 +0800

(use-package ocamlformat
  :custom (ocamlformat-enable 'enable-outside-detected-project)
  :hook (before-save . ocamlformat-before-save))

(provide '4a-ocamlformat)
