;; -*- lexical-binding: t; -*-
(use-package dired
  :ensure nil
  :commands (dired)
  :hook
  (dired-mode . dired-hide-details-mode)
  (dired-mode . hl-line-mode)
  :config
  (setopt dired-recursive-copies 'always)
  (setopt dired-recursive-deletes 'always)
  (setopt delete-by-moving-to-trash t)
  (setopt dired-dwim-target t)
  )

(provide 'el-dired)
