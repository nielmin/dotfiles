;; -*- lexical-binding: t; -*-

(use-package emacs
  :ensure nil
  :init
  ;; Frame height and width
  (add-to-list 'default-frame-alist '(height . 24))
  (add-to-list 'default-frame-alist '(width . 80))
  ;; Set tab width
  (setq-default tab-width 2)
  (setq-default indent-tabs-mode nil)
  ;; Do not create lock files
  (setq-default create-lockfiles nil)
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
                      :family "Agave"
                      :height 140)
  (set-face-attribute 'fixed-pitch nil
                      :family "Agave"
                      )
  (set-face-attribute 'variable-pitch nil
                      :family "Atkinson Hyperlegible Next"
                      :height 160)

  (setopt scroll-conservatively 100)
  (setopt scroll-margin 4)

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
  (use-short-answers t)
  )

(setq-default mode-line-format
  '("%e"
     " %o "
     "%* "
     my-modeline-buffer-name
     my-modeline-major-mode))

(defvar-local my-modeline-buffer-name
  '(:eval
     (when (mode-line-window-selected-p)
       (propertize (format " %s " (buffer-name)))))
  "Mode line construct to display the buffer name.")

(put 'my-modeline-buffer-name 'risky-local-variable t)

(defvar-local my-modeline-major-mode
  '(:eval
     (list
       (propertize "λ" 'face 'shadow)
       " "
       (propertize (capitalize (symbol-name major-mode)) 'face 'bold)))
  "Mode line construct to display the major mode.")

(put 'my-modeline-major-mode 'risky-local-variable t)

(use-package ibuffer
  :ensure nil
  :bind
  ("C-x C-b" . ibuffer)
  :custom
  (ibuffer-use-other-window t)
 )

(use-package diminish)

(use-package which-key
  :diminish which-key-mode
  :hook (after-init . which-key-mode)
  :config
  (setopt which-key-idle-delay 0.3)
  )

;; Add configuration modules to load path
(add-to-list 'load-path '"~/.dotfiles/.config/emacs/modules")

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
(require 'el-magit)
(require 'el-denote)
(require 'modes)
