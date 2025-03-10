;; modeline setup
;; Upstream:
;; https://github.com/RadioNoiseE/RNEmacs/blob/285eeb0295fd2b8928b29eedc168df7d0439e0a5/lisp/10-modeline.el
;; Birth:  2024-10-13 19:51:06.890442771 +0800
;; Modify: 2024-10-13 19 +0800


(setq mode-line-position
      (list
       " (" (propertize "%l" 'face 'font-lock-type-face)
       "," (propertize "%c" 'face 'font-lock-type-face) ") "))

(defun mode-line-fill (reserve)
  (when
      (and window-system (eq 'right (get-scroll-bar-mode)))
    (setq reserve (- reserve 3)))
  (propertize " " 'display
              `((space :align-to (- (+ right right-fringe right-margin) ,reserve)))))

(defun mode-line-flush-right (right-line)
  (let ((right-length (length (format-mode-line right-line))))
    (list (mode-line-fill right-length) right-line)))

(defun truncate-mode-line-construct (construct length)
  (let* ((full-string (format-mode-line construct))
         (truncated-string (truncate-string-to-width full-string length)))
    (replace-regexp-in-string "%" "%%" truncated-string)))

(setq-default mode-line-format
              (list
               '(:eval (propertize "%e" 'face 'font-lock-type-face))
               mode-line-front-space
               '(:eval (propertize "%@" 'face 'font-lock-constant-face))
               '(:eval (propertize "%t%Z" 'face 'font-lock-string-face))
               '(:eval (propertize "%*%+" 'face 'font-lock-warning-face))
               '(:eval (propertize " %F" 'face 'font-lock-keyword-face))
               mode-line-position
               '(:eval (mode-line-flush-right
                        (list
                         "[" mode-name "]"
                         (propertize " Mach-O " 'face 'font-lock-escape-face))))))

(provide '1a-modeline)
