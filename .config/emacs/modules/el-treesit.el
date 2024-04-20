(use-package treesit
  :ensure nil
  :init
  (setq treesit-language-source-alist
        '(
          (bash "https://github.com/tree-sitter/tree-sitter-bash")
          (css "https://github.com/tree-sitter/tree-sitter-css")
          (elisp "https://github.com/Wilfred/tree-sitter-elisp")
          (go "https://github.com/tree-sitter/tree-sitter-go")
          (gomod "https://github.com/camdencheek/tree-sitter-go-mod")
          (html "https://github.com/tree-sitter/tree-sitter-html")
          (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
          (json "https://github.com/tree-sitter/tree-sitter-json")
          (make "https://github.com/alemuller/tree-sitter-make")
          (markdown "https://github.com/ikatyang/tree-sitter-markdown")
          (php "https://github.com/tree-sitter/tree-sitter-php" "master" "php/src")
          (python "https://github.com/tree-sitter/tree-sitter-python")
          (yaml "https://github.com/ikatyang/tree-sitter-yaml")
          )
        )
  )

(use-package treesit-auto
  :ensure t
  :config
  (global-treesit-auto-mode)
  )

(provide 'el-treesit)
