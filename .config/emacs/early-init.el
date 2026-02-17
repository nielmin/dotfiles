;; early-init.el --- Emacs pre package.el & GUI configuration -*- lexical-binding: t; -*-
;; Code:
(setopt backup-inhibited t
  	  make-backup-files nil
  	  auto-save-default nil
        native-comp-async-report-warnings-errors nil
        inhibit-splash-screen t
        use-file-dialog nil
        )

;; Unneeded UI elemenets
(menu-bar-mode -1)
(tool-bar-mode -1)      
(scroll-bar-mode -1)    
(tooltip-mode -1)       
(set-fringe-mode 10)
