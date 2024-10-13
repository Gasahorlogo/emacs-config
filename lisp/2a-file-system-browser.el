;; file system browser
;; Birth:  2024-10-13 20:01:38.039908736 +0800
;; Modify: 2024-10-13 20 +0800

;; neotree
(use-package neotree
  :init (setq neo-window-fixed-size nil
          neo-theme (if (display-graphic-p) 'arrow))
  :bind (("<f8>" . neotree-toggle)))

(provide '2a-file-system-browser)
