  ;; -*- lexical-binding: t; -*-
  (use-package vertico
    :init
    (vertico-mode)
  )

  (use-package savehist
    :init
    (savehist-mode))

  (use-package marginalia 
    :init
    (marginalia-mode))

  (use-package consult 
    :bind
    ("C-s" . consult-line)
    ("C-x b" . consult-buffer)
    :hook
    (completion-list-mode . consult-preview-at-point-mode)
    )

   (use-package orderless
     :init
     (setq completion-styles '(orderless basic)
	   completion-category-defaults nil
	   completion-category-overrides '((file (styles partial-completion)))
	   )
     )

  (use-package company
    :hook
    ((prog-mode . company-mode)
     (text-mode . company-mode))
    )
  (provide 'el-completion)
