(use-package magit
  :ensure nil
  :init
  (message "Loading Magit!")
  :config
  (message "Loaded Magit!")
  :bind (("C-x g" . magit-status)
         ("C-x C-g" . magit-status))
  )

(provide 'el-magit)
