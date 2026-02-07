  ;; -*- lexical-binding: t; -*-
  (use-package ef-themes
    :init
    (ef-themes-take-over-modus-themes-mode 1)
    :config
    (setq modus-themes-mixed-fonts t)
    (setq modus-themes-italic-constructs t)
    (modus-themes-load-theme 'ef-owl)
    :bind
    (("<f5>" . ef-themes-rotate)
     ("C-<f5>" . ef-themes-select)
     ("M-<f5>" . ef-themes-load-random))
    )

  (provide 'el-theme)
