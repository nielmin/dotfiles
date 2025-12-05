  ;; -*- lexical-binding: t; -*-
  (use-package modus-themes
    :ensure t
    :init
    (modus-themes-include-derivatives-mode 1)
    :bind
    (("<f5>" . modus-themes-rotate)
     ("C-<f5>" . modus-themes-select)
     ("M-<f5>" . modus-themes-load-random))
    :config
    ;; Your customizations here:
    (setq modus-themes-to-toggle '(modus-operandi modus-vivendi)
          modus-themes-to-rotate modus-themes-items
          modus-themes-mixed-fonts t
          modus-themes-variable-pitch-ui t
          modus-themes-italic-constructs t
          modus-themes-bold-constructs t
          modus-themes-completions '((t . (bold)))
          modus-themes-prompts '(bold)
          modus-themes-headings
          '((agenda-structure . (variable-pitch light 2.2))
            (agenda-date . (variable-pitch regular 1.3))
            (t . (regular 1.15))))

    (setq modus-themes-common-palette-overrides nil)
    
    ;; Finally, load your theme of choice (or a random one with
    ;; `modus-themes-load-random', `modus-themes-load-random-dark',
    ;; `modus-themes-load-random-light').
    (modus-themes-load-theme 'modus-vivendi-tinted)
    )

  (provide 'el-theme)
