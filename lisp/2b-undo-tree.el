;; undo-tree
;; Birth:  2024-10-13 20:32:04.875979533 +0800
;; Modify: 2024-10-13 20 +0800

(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :custom
  (undo-tree-auto-save-history nil))

(provide '2b-undo-tree)
