;; some miscellaneous config
;; Birth:  2024-09-30 19:27:41.383201018 +0800
;; Modify: 2024-09-32 19 +0800

;; sundry
(setq inhibit-startup-message t)

(setq confirm-kill-emacs #'yes-or-no-p)

(setq backup-directory-alist
      (quote (("." . "~/.emacs-backups/"))))

;; tool bar and meun bar
;(tool-bar-mode 0)
;(menu-bar-mode 0)

;; global mode
(global-auto-revert-mode t)
(global-hl-line-mode 1)

(setq shell-file-name (executable-find "fish")) ; default shell of shell mode

;; hook
(add-hook 'prog-mode-hook #'show-paren-mode)
(add-hook 'prog-mode-hook #'hs-minor-mode)


;; provide
(provide '1a-preferences)
