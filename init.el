;; init.el
;; Copyright 2022 ChenDaojun
;; URL: https://github.com/ChenDaojun/.emacs.d

(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-startup)
(require 'init-elpa)
(require 'init-packages)
(require 'init-ui)


(defconst *is-mac* (eq system-type 'darwin))
(defconst *is-linux* (eq system-type 'gnu/linux))
(defconst *is-windows* (memq system-type '(ms-dos windows-nt cygwin)))

(prefer-coding-system 'utf-8)
(unless *is-windows*
    (set-selection-coding-system 'utf-8))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(company use-package smart-mode-line restart-emacs gruvbox-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
