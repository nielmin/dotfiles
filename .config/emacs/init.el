(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(org-babel-load-file
 (expand-file-name
  "config.org"
  user-emacs-directory))
