  ;; -*- lexical-binding: t; -*-
  (use-package org
    :init
    ;; org settings
    (setq org-ellipsis " ")
    (setq org-src-fontify-natively t)
    (setq org-src-tab-acts-natively t)
    (setq org-confirm-babel-evaluate nil)
    (setq org-export-with-smart-quotes t)
    (setq org-src-window-setup 'current-window)
    (setq org-log-into-drawer t)
    :hook
    (org-mode . org-indent-mode)
    (org-mode . visual-line-mode)
    :config
    ;; org-agenda
    (setq org-agenda-files
	  '("~/Documents/utsa/todo.org"))
    (setq org-agenda-start-with-log-mode t)
    (setq org-log-done 'time)
    ;; indentation
    (setq org-edit-src-content-indentation 0
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

(use-package org-modern
  :after org
  :hook
  (org-mode . org-modern-mode)
)

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
