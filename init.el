;;; init.el

;; init package
(require 'package)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(package-initialize)



;; custom loads paths
(add-to-list 'load-path (expand-file-name "elisp" user-emacs-directory))



(custom-set-variables)
(custom-set-faces)



(require 'init-gui)
(require 'init-generic)
(require 'init-helm)
(require 'init-sr-speedbar)
(require 'init-irony)
(require 'init-company)
(require 'init-rtags)



(provide 'init)
