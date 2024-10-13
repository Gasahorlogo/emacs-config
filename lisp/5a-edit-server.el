;; edit-server
;; Birth:  2024-10-13 20:30:20.894729209 +0800
;; Modify: 2024-10-13 20 +0800

(use-package edit-server
  :commands edit-server-start
  :init (if after-init-time
              (edit-server-start)
            (add-hook 'after-init-hook
                      #'(lambda() (edit-server-start))))
  :config (setq edit-server-new-frame-alist
                '((name . "Edit with Emacs FRAME")
                  (top . 200)
                  (left . 200)
                  (width . 80)
                  (height . 25)
                  (minibuffer . t)
                  (menu-bar-lines . t)
                  (window-system . x))))

(provide '5a-edit-server)
