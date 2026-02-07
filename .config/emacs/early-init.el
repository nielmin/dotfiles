  ;; early-init.el --- Emacs pre package.el & GUI configuration -*- lexical-binding: t; -*-
  ;; Code:
  (setopt backup-inhibited t
  	  make-backup-files nil
  	  auto-save-default nil)

  (setopt native-comp-async-report-warnings-errors nil)

  ;; Unneeded UI elemenets
  (menu-bar-mode -1)
  (tool-bar-mode -1)      
  (scroll-bar-mode -1)    
  (tooltip-mode -1)       
  (set-fringe-mode 10)

  (setopt inhibit-splash-screen t)
  (setopt use-file-dialog nil)

  (setq package-enable-at-startup nil)
