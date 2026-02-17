;; -*- lexical-binding: t; -*-
(use-package dired
  :ensure nil
  :commands (dired)
  :hook
  (dired-mode . dired-hide-details-mode)
  (dired-mode . hl-line-mode)
  :config
  (setopt dired-recursive-copies 'always
          dired-recursive-deletes 'always
          delete-by-moving-to-trash t
          dired-dwim-target t
          dired-kill-when-opening-new-dired-buffer t
          )
  )

(provide 'el-dired)
