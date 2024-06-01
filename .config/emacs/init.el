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
(require 'el-treesit)
(require 'el-flycheck)

    (use-package diminish
      :ensure t
      )

    (use-package emacs
      :init
      ;; Follow symlinks (for git dotfiles)
      (setq vc-follow-symlinks t)
      ;; Theme
      (load-theme 'modus-operandi-tinted t)
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

(use-package which-key
  :diminish which-key-mode
  :init
  (which-key-mode)
  :config
  (setq which-key-idle-delay 0.3)
  )

(use-package web-mode
  :mode "\\.html?\\'" 
  :mode "\\.css\\'"
  :mode "\\.phtml\\'"
  :mode "\\.php\\'"
  :mode "\\.tpl\\.php\\'"
  :mode "\\.[agj]sp\\'"
  :mode "\\.as[cp]x\\'"
  :mode "\\.erb\\'"
  :mode "\\.mustache\\'"
  :mode "\\.djhtml\\'"
  :config
  (setq web-mode-markup-indent-offser 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2)
  )
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit which-key web-mode vertico tsc treesit-auto rainbow-delimiters org-superstar org-ref org-modern orderless modus-themes meow marginalia jinx flycheck diminish consult company auto-compile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
