  ;; -*- lexical-binding: t; -*-
  (use-package vertico
    :ensure t
    :init
    (vertico-mode)
  )

  (provide 'el-completion)

  (use-package savehist
    :init
    (savehist-mode))
  (provide 'el-completion)

  (use-package marginalia 
    :init
    (marginalia-mode))

  (provide 'el-completion)

  ;; -*- lexical-binding: t; -*-
  (use-package consult 
    :bind
    ("C-s" . consult-line)
    ("C-x b" . consult-buffer)
    :hook
    (completion-list-mode . consult-preview-at-point-mode)
    )
  (provide 'el-completion)

  ;; -*- lexical-binding: t; -*-
   (use-package orderless
     :init
     (setq completion-styles '(orderless basic)
	   completion-category-defaults nil
	   completion-category-overrides '((file (styles partial-completion)))
	   )
     )
  (provide 'el-completion)

  (use-package company
    :hook
    ((prog-mode . company-mode)
     (text-mode . company-mode))
    )
  (provide 'el-completion)
