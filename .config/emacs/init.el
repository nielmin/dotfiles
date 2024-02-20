(require 'package)
(add-to-list 'package-archives
            '("melpa" . "https://melpa.org/packages/")
            )
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

(use-package emacs
  :init
  ;; Follow symlinks (for git dotfiles)
  (setq vc-follow-symlinks t)
  ;; Theme
  (load-theme 'modus-vivendi-tinted t)
  ;; Unneeded UI elemenets
  (menu-bar-mode -1)       
  (tool-bar-mode -1)      
  (scroll-bar-mode -1)    
  (tooltip-mode -1)       
  (set-fringe-mode 10)    
  ;; No startup message
  (setq inhibit-startup-message t)
  ;; Backup
  (setq backup-directory-alist
	    `((".*" . ,temporary-file-directory)))
  (setq auto-save-file-name-transforms
	    `((".*" ,temporary-file-directory t)))
  (setq make-backup-files nil)
  (setq auto-save-default nil)
  ;; Frame height and width
  (add-to-list 'default-frame-alist '(height . 24))
  (add-to-list 'default-frame-alist '(width . 80))
  ;; Set tab width
  (setq-default tab-width 4)
  (setq-default indent-tabs-mode nil)
  :bind
  ("M-o" . other-window)
  ("C-c '" . org-edit-src-code)
  ("C-x k" . 'kill-cur-buffer)
  ("C-c c e" . 'config-edit)
  ("C-c c r" . 'config-reload)
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
    (find-file "~/dotfiles/.config/emacs/config.org"))
  (defun config-reload ()
    (interactive)
    (org-babel-load-file (expand-file-name "~/dotfiles/.config/emacs/config.org")))
  (defalias 'yes-or-no-p 'y-or-n-p)  
  )

(org-babel-load-file
 (expand-file-name "config.org" user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(which-key vertico undo-tree tree-sitter rainbow-delimiters org-superstar orderless modus-themes meow marginalia magit jinx embark-consult doom-themes doom-modeline diminish company citeproc auto-package-update auto-compile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
