(require 'package)
(add-to-list 'package-archives
            '("melpa" . "https://melpa.org/packages/")
            '("gnu" . "https://elpa.gnu.org/packages/")
            )
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-and-compile
  (setq use-package-always-ensure t
        use-package-expand-minimally t))

(org-babel-load-file
 (expand-file-name "config.org" user-emacs-directory))
