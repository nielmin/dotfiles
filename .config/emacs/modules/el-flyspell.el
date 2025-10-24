(use-package flyspell
  :ensure nil
  :hook
  (prog-mode . flyspell-prog-mode)
  (text-mode . flyspell-mode)
  )
(provide 'el-flyspell)
