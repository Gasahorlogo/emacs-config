;; display line numbers
;; Birth:  2024-09-30 19:46:38.310234511 +0800
;; Modify: 2024-09-30 19 +0800

(column-number-mode t) ; mode line
(setq display-line-numbers-type 'relative) ; relative

;; References:
;; 1) emacs下相对行号的设置
;; https://zhuanlan.zhihu.com/p/643007207
(dolist (mode '(text-mode-hook
                prog-mode-hook
                conf-mode-hook))
        (add-hook
         mode
         lambda ()
         (progn (display-line-numbers-mode 1) (setq display-line-numbers-type 'relative)))))

(provide '1a-line-numbers)
