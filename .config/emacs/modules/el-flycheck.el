(use-package flycheck
  :init (global-flycheck-mode)
  )

(use-package flycheck-eglot
  :after (flycheck eglot)
  :hook
  (prog-mode . flycheck-eglot-mode)
  )

(provide 'el-flycheck)
