  ;; -*- lexical-binding: t; -*-

  ;; Add configuration modules to load path
  (add-to-list 'load-path '"~/.dotfiles/.config/emacs/modules")

  ;; Required Modules
  (require 'el-package)
  (require 'el-completion)
  (require 'el-theme)
  (require 'el-org)
  (require 'el-ui)
  (require 'el-meow)
  (require 'el-dired)
  (require 'el-eglot)

    (use-package diminish
      )

    (use-package emacs
      :init
      ;; Follow symlinks (for git dotfiles)
      (setq vc-follow-symlinks t)
      ;; Theme
      (load-theme 'modus-vivendi-tinted t)
      ;; Frame height and width
      (add-to-list 'default-frame-alist '(height . 24))
      (add-to-list 'default-frame-alist '(width . 80))
      ;; Set tab width
      (setq-default tab-width 4)
      (setq-default indent-tabs-mode nil)
      :bind
      ("M-o" . other-window)
      ("C-x k" . 'kill-cur-buffer)
      ("C-x C-b" . ibuffer)
      ("C-c '" . org-edit-src-code)
      ("C-c c e" . 'config-edit)
      :hook
      ;; Enable line numbers for some modes
      ((prog-mode . display-line-numbers-mode)
       (conf-mode . display-line-numbers-mode))

      :config
      ;; Change default font for new (non special-display) frames:
      (add-to-list 'default-frame-alist '(font . "Iosevka-16"))
      (set-face-attribute 'default t :font "Iosevka-16")

      ;; Change default font for the current frame, as well as future frames:
      (set-face-attribute 'default nil :font "Iosevka-16")
      (set-frame-font "Iosevka-16" nil t)

      (setq scroll-conservatively 100)
      (setq scroll-margin 8)

      (setq org-src-window-setup 'current-window)

      (defun kill-cur-buffer ()
	(interactive)
	(kill-buffer (current-buffer)))
      (defun config-edit ()
	(interactive)
	(find-file "~/.dotfiles/.config/emacs/emacs.org"))
     (defalias 'yes-or-no-p 'y-or-n-p)  
    )

  ;; (use-package treesit
  ;;   :preface
  ;;   (dolist (mapping '((go-mode . go-ts-mode)))
  ;;     (add-to-list 'major-mode-remap-alist mapping))
  ;;   :init
  ;;   (add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
  ;;   (add-to-list 'auto-mode-alist '("/go\\.mod\\'" . go-mod-ts-mode))
  ;;   :config
  ;;   (setq treesit-language-source-alist
  ;;         '(
  ;;           (bash "https://github.com/tree-sitter/tree-sitter-bash")
  ;;           (css "https://github.com/tree-sitter/tree-sitter-css")
  ;;           (elisp "https://github.com/Wilfred/tree-sitter-elisp")
  ;;           (go "https://github.com/tree-sitter/tree-sitter-go")
  ;;           (html "https://github.com/tree-sitter/tree-sitter-html")
  ;;           (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
  ;;           (json "https://github.com/tree-sitter/tree-sitter-json")
  ;;           (make "https://github.com/alemuller/tree-sitter-make")
  ;;           (markdown "https://github.com/ikatyang/tree-sitter-markdown")
  ;;           (php "https://github.com/tree-sitter/tree-sitter-php" "master" "php/src")
  ;;           (python "https://github.com/tree-sitter/tree-sitter-python")
  ;;           (yaml "https://github.com/ikatyang/tree-sitter-yaml")
  ;;           )
  ;;         )
  ;;   )

  ;; (use-package which-key
  ;;   :diminish which-key-mode
  ;;   :init
  ;;   (which-key-mode)
  ;;   :config
  ;;   (setq which-key-idle-delay 0.3)
  ;;   )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit diminish vertico rainbow-delimiters orderless modus-themes meow marginalia consult company)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
