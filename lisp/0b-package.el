;; use-package
;; Upstream:
;; https://github.com/RadioNoiseE/RNEmacs/blob/285eeb0295fd2b8928b29eedc168df7d0439e0a5/lisp/0-package.el
;; Birth:  2024-10-13 19:39:34.309955584 +0800
;; Modify: 2024-10-20 11 +0800

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t)

(provide '0b-package)
