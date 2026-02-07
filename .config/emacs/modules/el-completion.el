;; -*- lexical-binding: t; -*-

(use-package savehist
  :ensure nil
  :hook (after-init . savehist-mode)
  )

(use-package consult
  :bind
  ("C-x b" . consult-buffer)
  :hook
  (completion-list-mode . consult-preview-at-point-mode)
  )

(use-package marginalia
  :hook (after-init . marginalia-mode)
  )

(use-package orderless
  :config
  (setopt completion-styles '(orderless basic)
	        completion-category-defaults nil
	        completion-category-overrides '((file (styles partial-completion)))
	        )
  )

(use-package vertico
  :hook (after-init . vertico-mode)
  )

(use-package corfu
  :hook (after-init . global-corfu-mode)
  :bind (:map corfu-map ("<tab>" . corfu-complete))
  :config
  (setopt tab-always-indent 'complete)
  (setopt corfu-preview-current nil)
  (setopt corfu-min-width 20)

  (setopt corfu-popupinto-delay '(1.25 . 0.5))
  (corfu-popupinfo-mode 1)

  (with-eval-after-load 'savehist
    (corfu-history-mode 1)
    (add-to-list 'savehist-additional-variables 'corfu-history))
  )

(provide 'el-completion)
