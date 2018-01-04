;;----------------------------------------------------------------------------
;; init package
;;----------------------------------------------------------------------------

(package-initialize)
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path "/usr/local/lib/node_modules/tern/emacs")
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

;;----------------------------------------------------------------------------
;; set custom set variables
;;----------------------------------------------------------------------------

(custom-set-variables
 '(auto-save-file-name-transforms (quote ((".*" "~/.emacs.d/autosaves/\\1" t))))
 '(backup-directory-alist (quote ((".*" . "~/.emacs.d/backups/"))))
 '(diff-hl-margin-mode t)
 '(global-diff-hl-mode t)
 '(package-selected-packages
   (quote
    (smartparens zenburn-theme web-mode smart-mode-line-powerline-theme neotree indium diff-hl company-tern ample-theme all-the-icons)))
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify)))

;;----------------------------------------------------------------------------
;; set custom faces
;;----------------------------------------------------------------------------

(custom-set-faces
 '(neo-dir-link-face ((t (:height 80))))
 '(neo-file-link-face ((t (:height 80)))))

;;----------------------------------------------------------------------------
;; load configuration
;;----------------------------------------------------------------------------

(require 'init-gui)
(require 'init-generic)
(require 'init-mode-line)
(require 'init-ido)
(require 'init-neotree)
(require 'init-web-mode)
(require 'init-tern)
(require 'init-company)
(require 'init-smartparens)

;;----------------------------------------------------------------------------
;; provide init
;;----------------------------------------------------------------------------

(provide 'init)