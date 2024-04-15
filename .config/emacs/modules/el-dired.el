  ;; -*- lexical-binding: t; -*-
  (use-package dired
    :ensure nil
    :init
    :hook
    (dired-mode . dired-hide-details-mode)
    :config
    (setq delete-by-moving-to-trash t)
    (setq dired-dwim-target t)
    )
  (provide 'el-dired)
