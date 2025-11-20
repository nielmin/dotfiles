;; -*- lexical-binding: t; -*-
(use-package ef-themes
  :ensure t
  :init
  (ef-themes-take-over-modus-themes-mode 1)
  :config
  (setq modus-themes-mixed-fonts t)
  (setq modus-themes-italic-constructs t)
  
  (modus-themes-load-theme 'ef-dream)
  )

(provide 'el-theme)
