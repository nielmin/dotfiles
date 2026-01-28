;; -*- lexical-binding: t; -*-

(use-package org
  :init
  ;; org settings
  (setopt org-ellipsis " ")
  (setopt org-src-fontify-natively t)
  (setopt org-src-tab-acts-natively t)
  (setopt org-confirm-babel-evaluate nil)
  (setopt org-export-with-smart-quotes t)
  (setopt org-src-window-setup 'current-window)
  (setopt org-log-into-drawer t)
  (setopt org-hide-emphasis-markers t)
  :hook
  (org-mode . org-indent-mode)
  (org-mode . visual-line-mode)
  :config
  ;; org-agenda
  (setopt org-agenda-start-with-log-mode t)
  (setopt org-log-done 'time)
  ;; indentation
  (setopt org-edit-src-content-indentation 0
	        org-src-tab-acts-natively t
	        org-src-preserve-indentation t)
  ;; org-babel
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     )
   )
  )

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "~/Documents/org")
  (org-roam-db-location "~/Documents/org/org-roam.db")
  (org-roam-completion-everywhere t)
  (org-roam-capture-templates
   '(("d" "default" plain
      "%?"
      :if-new (file+head "%<%Y%m%d%H%M%S>-${slug}.org" "#+title: ${title}\n")
      :unarrowed t))
   )
  :bind (("C-c r l" . org-roam-buffer-toggle)
         ("C-c r f" . org-roam-node-find)
         ("C-c r i" . org-roam-node-insert)
         ("C-c r c" . org-roam-node-capture)
         :map org-mode-map
         ("C-M-i" . completion-at-point)
         )
  :config
  (org-roam-setup)
  )

(use-package org-faces
  :ensure nil
  :after org
  :config
  ;; Resize Org headings
  (dolist (face '((org-level-1 . 1.4)
                  (org-level-2 . 1.3)
                  (org-level-3 . 1.2)
                  (org-level-4 . 1.1)
                  (org-level-5 . 1.1)
                  (org-level-6 . 1.1)
                  (org-level-7 . 1.1)
                  (org-level-8 . 1.1)))
    (set-face-attribute (car face) nil :font "Atkinson Hyperlegible Next" :weight 'bold :height (cdr face)))
  )

(use-package org-tempo
  :ensure nil
  :after org
  :config
  (dolist (item '(("s" . "src")
                  ("el" . "src emacs-lisp")
                  ("p" . "src python")
                  ("g" . "src go")
                  )
                )
    (add-to-list 'org-structure-template-alist item))
  )

(provide 'el-org)
