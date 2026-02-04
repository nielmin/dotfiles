(use-package flycheck
  :ensure t
  :hook
  (prog-mode . flycheck-mode)
  )

(use-package flycheck-eglot
  :ensure t
  :after (flycheck eglot)
  :hook
  (prog-mode . flycheck-eglot-mode)
  )

(provide 'el-flycheck)
