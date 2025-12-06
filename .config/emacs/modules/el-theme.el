  ;; -*- lexical-binding: t; -*-
  (use-package doric-themes
    :ensure t
    :demand t
    :config
    (setq doric-themes-to-toggle '(doric-light doric-dark))
    (setq doric-themes-to-rotate doric-themes-collection)
    (doric-themes-select 'doric-obsidian)
    :bind
    (("<f5>" . doric-themes-rotate)
     ("C-<f5>" . doric-themes-select)
     ("M-<f5>" . doric-themes-load-random))
    )

  (provide 'el-theme)
