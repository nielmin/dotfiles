;; -*- lexical-binding: t; -*-

;; Add configuration modules to load path
(add-to-list 'load-path '"~/.dotfiles/.config/emacs/modules")

(setopt custom-file "~/.dotfiles/.config/emacs/custom.el")

;; Required Modules
(require 'el-package)
(require 'el-completion)
(require 'el-theme)
(require 'el-org)
(require 'el-ui)
(require 'el-dired)
(require 'el-eglot)
(require 'el-treesit)
(require 'el-flycheck)
(require 'el-flyspell)
(require 'el-meow)
(require 'el-magit)
(require 'modes)
(require 'terminal)

(when (daemonp)
  (use-package exec-path-from-shell)
  (exec-path-from-shell-initialize))

(setq-default create-lockfiles nil)

(use-package emacs
  :init
  ;; Follow symlinks (for git dotfiles)
  (setopt vc-follow-symlinks t)
  ;; Frame height and width
  (add-to-list 'default-frame-alist '(height . 24))
  (add-to-list 'default-frame-alist '(width . 80))
  ;; Set tab width
  (setq-default tab-width 2)
  (setq-default indent-tabs-mode nil)
  :bind
  ("M-o" . other-window)
  ("C-x k" . 'kill-cur-buffer)
  ("C-c '" . org-edit-src-code)
  ("C-c c e" . 'config-edit)
  :hook
  ;; Enable line numbers for some modes
  ((prog-mode . display-line-numbers-mode)
   (conf-mode . display-line-numbers-mode))

  :config
  (set-face-attribute 'default nil
                      :family "0xProto Nerd Font"
                      :height 140)
  (set-face-attribute 'fixed-pitch nil
                      :family "0xProto Nerd Font")
  (set-face-attribute 'variable-pitch nil
                      :family "Atkinson Hyperlegible"
                      :height 160)

  (setopt scroll-conservatively 100)
  (setopt scroll-margin 8)

  (setopt org-src-window-setup 'current-window)

  (defun kill-cur-buffer ()
    (interactive)
    (kill-buffer (current-buffer)))

  (defun config-edit ()
    (interactive)
    (find-file "~/.dotfiles/.config/emacs/emacs.org"))
  (defalias 'yes-or-no-p 'y-or-n-p)

  :custom
  (tab-always-indent 'complete)
  (read-extended-command-predicate #'command-completion-default-include-p)

  )

(use-package diminish
  :ensure t
  )

(use-package which-key
  :diminish which-key-mode
  :hook (after-init . which-key-mode)
  :config
  (setopt which-key-idle-delay 0.3)
  )
