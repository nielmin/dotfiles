(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(setq load-prefer-newer t)

(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("75fb82e748f32de807b3f9e8c72de801fdaeeb73c791f405d8f73711d0710856" default))
 '(package-selected-packages
   '(visual-fill-column catppuccin-theme cratppuccin-theme bufler eglot which-key vertico rainbow-delimiters org-superstar orderless meow marginalia doom-themes doom-modeline diminish dashboard consult company beacon auto-package-update auto-compile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
