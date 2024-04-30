  ;; -*- lexical-binding: t; -*-
  (use-package eglot 
    :hook
    ((html-mode html-ts-code) . eglot-ensure)
    ((css-ts-mode css-mode) . eglot-ensure)
    ((go-mode go-ts-mode) . eglot-ensure)
    ((python-mode python-ts-mode) . eglot-ensure)
    :config
    (fset #'jsonrpc--log-event #'ignore)
    )
  (provide 'el-eglot)
