;; -*- lexical-binding: t; -*-

(use-package doric-themes
  :demand t
  :config
  (setq doric-themes-to-toggle '(doric-marble doric-obsidian))
  (setq doric-themes-to-rotate doric-themes-collection)
  
  (doric-themes-select 'doric-obsidian)
  
  :bind
  (("<f5>" . doric-themes-toggle)
   ("C-<f5>" . doric-themes-select)
   ("M-<f5>" . doric-themes-rotate))
  )

(provide 'el-theme)
