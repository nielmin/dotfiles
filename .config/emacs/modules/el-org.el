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
    ;; latex
    (with-eval-after-load 'ox-latex
      (add-to-list 'org-latex-classes
		   '("org-plain-latex"
		     "\\documentclass{article}
	     [NO-DEFAULT-PACKAGES]
	     [PACKAGES]
	     [EXTRA]"
		     ("\\section{%s}" . "\\section*{%s}")
		     ("\\subsection{%s}" . "\\subsection*{%s}")
		     ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		     ("\\paragraph{%s}" . "\\paragraph*{%s}")
		     ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))
    )

(use-package org-faces
  :ensure nil
  :after org
  :config
  ;; Resize Org headings
  (dolist (face '((org-level-1 . 1.35)
                  (org-level-2 . 1.3)
                  (org-level-3 . 1.2)
                  (org-level-4 . 1.1)
                  (org-level-5 . 1.1)
                  (org-level-6 . 1.1)
                  (org-level-7 . 1.1)
                  (org-level-8 . 1.1)))
    (set-face-attribute (car face) nil :font "Atkinson Hyperlegible" :weight 'bold :height (cdr face)))
  )

;; (use-package org-modern
;;   :after org
;;   :hook
;;   (org-mode . org-modern-mode)
;;   :custom
;;   (org-modern-star 'replace)
;; )

(use-package org-tempo
  :ensure nil
  :after org
  :config
  (dolist (item '(("sh" . "src")
                  ("el" . "src emacs-lisp")
                  ("py" . "src python")
                  ("go" . "src go")
                  )
                )
    (add-to-list 'org-structure-template-alist item)))

(provide 'el-org)
