;; -*- lexical-binding: t; -*-

(use-package org
  :ensure nil
  :init
  ;; org settings
  (setopt org-ellipsis " "
          org-src-fontify-natively t
          org-src-tab-acts-natively t
          org-confirm-babel-evaluate nil
          org-export-with-smart-quotes t
          org-src-window-setup 'current-window
          org-log-into-drawer t
          org-hide-emphasis-markers t
   )
  :hook
  (org-mode . org-indent-mode)
  (org-mode . visual-line-mode)
  :config
  ;; org-agenda
  (setopt org-agenda-start-with-log-macode nil)
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
  (setopt org-structure-template-alist
          '(("s" . "src")
            ("e" . "src emacs-lisp")
            ("p" . "src python")
            ("g" . "src go"))))

(provide 'el-org)
