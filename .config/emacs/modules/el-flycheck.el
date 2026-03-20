(use-package flycheck
  :hook
  (after-init . flycheck-mode)
  )

(use-package flycheck-eglot
  :after (flycheck eglot)
  :hook
  (prog-mode . flycheck-eglot-mode)
  )

(provide 'el-flycheck)
