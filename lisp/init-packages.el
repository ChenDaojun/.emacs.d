(provide 'init-packages)

(use-package restart-emacs)

(use-package company
  :ensure t
  :hook ('after-init-hook 'global-company-mode)
  :config (setq company-minimum-prefix-length 1
		company-show-quick-access t))

(use-package flymake
  :hook (prog-mode . flymake-mode)
  :config
  (global-set-key (kbd "M-n") #'flymake-goto-next-error)
  (global-set-key (kbd "M-p") #'flymake-goto-prev-error))
