;; repository initialize
;; Birth:  2024-09-30 19:38:55.573894524 +0800
;; Modify: 2024-09-30 19 +0800

(require 'package)

(setq package-archives '(
  ("gnu"
   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
  ("nongnu"
   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/nongnu/")
  ("melpa"
   . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
(package-initialize)

(provide '0a-package-archives)
