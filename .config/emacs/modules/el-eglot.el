;; -*- lexical-binding: t; -*-
(use-package eglot
  :bind (:map eglot-mode-map
        ("C-c l a" . eglot-code-actions)
	      ("C-c l r" . eglot-rename)
	      ("C-c l h" . eldoc)
	      ("C-c l f" . eglot-format)
	      ("C-c l F" . eglot-format-buffer)
	      ("C-c l d" . xref-find-definitions-at-mouse)
	      ;; sometimes ionide acts up
	      ("C-c l R" . eglot-reconnect))
  :hook
  ((html-mode html-ts-code) . eglot-ensure)
  ((css-ts-mode css-mode) . eglot-ensure)
  ((go-mode go-ts-mode) . eglot-ensure)
  ((python-mode python-ts-mode) . eglot-ensure)
  ((markdown-mode text-mode) . eglot-ensure)
  :config
  (fset #'jsonrpc--log-event #'ignore)
  (add-to-list 'eglot-server-programs
               '((markdown-mode text-mode) . ("harper-ls" "--stdio")))
  )

(provide 'el-eglot)
