(use-package envrc
  :hook
  (after-init . envrc-global-mode)
)

(defun go-run-this-file ()
  "go run"
  (interactive)
  (compile (format "go run %s" (buffer-file-name))))

(defun go-compile ()
  "go compile"
  (interactive)
  (compile "go build -v && go test -v && go vet"))

(defun go-compile-debug ()
  "go compile with necessary flags to debug with gdb"
  (interactive)
  (compile "go build -gcflags=all=\" -N -l\""))

(use-package go-mode
  :ensure t
  :bind (:map go-mode-map
         ("C-c C-k" . go-run-this-file)
         ("C-c C-c" . go-compile)
         ("C-c C-d" . go-compile-debug))
  :hook ((before-save . eglot-format-buffer))
)

(provide 'modes)

(use-package markdown-mode
  :mode ("README\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown")
  :bind (:map markdown-mode-map
              ("C-c C-e" . markdown-do)))
