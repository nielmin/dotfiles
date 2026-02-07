;; -*- lexical-binding: t; -*-
(use-package eglot
  :ensure nil
  :bind (:map eglot-mode-map
        ("C-c l a" . eglot-code-actions)
	      ("C-c l r" . eglot-rename)
	      ("C-c l h" . eldoc)
	      ("C-c l f" . eglot-format)
	      ("C-c l F" . eglot-format-buffer)
	      ("C-c l d" . xref-find-definitions-at-mouse)
	      ("C-c l R" . eglot-reconnect))
  :hook
  ((html-mode html-ts-code) . eglot-ensure)
  ((css-ts-mode css-mode) . eglot-ensure)
  ((go-mode go-ts-mode) . eglot-ensure)
  ((python-mode python-ts-mode) . eglot-ensure)
  (org-mode . eglot-ensure)
  :config
  (setq-default eglot-workspace-configuration
                '(:harper-ls (:linters (:SpellCheck t
                                                    :SentenceCapitalization :json-false
                                                    :LongSentences :json-false
                                                    :Spaces :json-false))))
  (add-to-list 'eglot-server-programs
               '(org-mode . ("harper-ls" "--stdio"))
               )
  :custom
  (eglot-autoshutdown t)
  )
(provide 'el-eglot)
