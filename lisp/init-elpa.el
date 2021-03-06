;;is init-elpa.el
;; Copyright 2022 ChenDaojun
;; URL:https://github.com/ChenDaojun/.emacs.d


(setq package-archives
       '(("melpa" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
        ("gnu" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
        ("org" . "https://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

(setq package-check-signature nil) 

(require 'package)
(unless (bound-and-true-p package--initialized)
       (package-initialize))


(unless package-archive-contents
       (package-refresh-contents))


(unless (package-installed-p 'use-package)
       (package-refresh-contents)
       (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(setq use-package-always-ensure t
      ;;use-package-always-defer t
      use-package-enable-imenu-support t
      use-package-expand-minimally t)


(provide 'init-elpa)
