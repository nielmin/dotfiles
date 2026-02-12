(use-package direnv
  :hook
  (prog-mode . direnv-mode)
  :bind (("C-c d d" . direnv-mode)
         ("C-c d a" . direnv-allow))
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
